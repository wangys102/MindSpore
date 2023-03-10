#!/bin/bash
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ============================================================================

model_path=../data/models/east.air
output_model_name=../data/models/east

atc \
    --input_format=NCHW \
    --model=$model_path \
    --framework=1 \
    --output=$output_model_name \
    --soc_version=Ascend310 \
    --disable_reuse_memory=0 \
    --insert_op_conf=aipp.config \
    --op_select_implmode=high_precision
exit 0
