
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct smu_context {int pm_enabled; } ;


 int SMU_MSG_DisableSmuFeaturesHigh ;
 int SMU_MSG_DisableSmuFeaturesLow ;
 int SMU_MSG_EnableSmuFeaturesHigh ;
 int SMU_MSG_EnableSmuFeaturesLow ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

int smu_feature_update_enable_state(struct smu_context *smu, uint64_t feature_mask, bool enabled)
{
 uint32_t feature_low = 0, feature_high = 0;
 int ret = 0;

 if (!smu->pm_enabled)
  return ret;

 feature_low = (feature_mask >> 0 ) & 0xffffffff;
 feature_high = (feature_mask >> 32) & 0xffffffff;

 if (enabled) {
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_EnableSmuFeaturesLow,
        feature_low);
  if (ret)
   return ret;
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_EnableSmuFeaturesHigh,
        feature_high);
  if (ret)
   return ret;

 } else {
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_DisableSmuFeaturesLow,
        feature_low);
  if (ret)
   return ret;
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_DisableSmuFeaturesHigh,
        feature_high);
  if (ret)
   return ret;

 }

 return ret;
}
