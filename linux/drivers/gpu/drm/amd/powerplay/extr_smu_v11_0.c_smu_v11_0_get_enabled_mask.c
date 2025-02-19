
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;


 int EINVAL ;
 int SMU_MSG_GetEnabledSmuFeaturesHigh ;
 int SMU_MSG_GetEnabledSmuFeaturesLow ;
 int smu_read_smc_arg (struct smu_context*,int*) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

__attribute__((used)) static int smu_v11_0_get_enabled_mask(struct smu_context *smu,
          uint32_t *feature_mask, uint32_t num)
{
 uint32_t feature_mask_high = 0, feature_mask_low = 0;
 int ret = 0;

 if (!feature_mask || num < 2)
  return -EINVAL;

 ret = smu_send_smc_msg(smu, SMU_MSG_GetEnabledSmuFeaturesHigh);
 if (ret)
  return ret;
 ret = smu_read_smc_arg(smu, &feature_mask_high);
 if (ret)
  return ret;

 ret = smu_send_smc_msg(smu, SMU_MSG_GetEnabledSmuFeaturesLow);
 if (ret)
  return ret;
 ret = smu_read_smc_arg(smu, &feature_mask_low);
 if (ret)
  return ret;

 feature_mask[0] = feature_mask_low;
 feature_mask[1] = feature_mask_high;

 return ret;
}
