
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_feature {int feature_num; int mutex; int allowed; } ;
struct smu_context {struct smu_feature smu_feature; } ;


 int SMU_FEATURE_MAX ;
 int SMU_MSG_SetAllowedFeaturesMaskHigh ;
 int SMU_MSG_SetAllowedFeaturesMaskLow ;
 int bitmap_copy (unsigned long*,int ,int) ;
 scalar_t__ bitmap_empty (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;

__attribute__((used)) static int smu_v11_0_set_allowed_mask(struct smu_context *smu)
{
 struct smu_feature *feature = &smu->smu_feature;
 int ret = 0;
 uint32_t feature_mask[2];

 mutex_lock(&feature->mutex);
 if (bitmap_empty(feature->allowed, SMU_FEATURE_MAX) || feature->feature_num < 64)
  goto failed;

 bitmap_copy((unsigned long *)feature_mask, feature->allowed, 64);

 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_SetAllowedFeaturesMaskHigh,
       feature_mask[1]);
 if (ret)
  goto failed;

 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_SetAllowedFeaturesMaskLow,
       feature_mask[0]);
 if (ret)
  goto failed;

failed:
 mutex_unlock(&feature->mutex);
 return ret;
}
