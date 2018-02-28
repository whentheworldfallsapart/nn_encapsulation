#!/bin/bash

start=`date +%s`

# train and test
DEVICE_ID=5
CUDA_VISIBLE_DEVICES=$DEVICE_ID python holly_capsule.py \
--device_id=$DEVICE_ID \
--experiment_name=base_101_EM_v6 \
--debug_mode=False \
--route=EM \
--E_step_norm \
--dataset=cifar10 \
--cap_model=v0 \
--loss_form=CE \
--less_data_aug


end=`date +%s`
runtime=$((end-start))

echo "Completed in" $runtime "seconds"
