
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_dpm_context {scalar_t__ dpm_level; } ;
struct smu_context {int workload_mask; int* workload_prority; long* workload_setting; int mutex; int pm_enabled; struct smu_dpm_context smu_dpm; } ;
typedef enum PP_SMC_POWER_PROFILE { ____Placeholder_PP_SMC_POWER_PROFILE } PP_SMC_POWER_PROFILE ;


 scalar_t__ AMD_DPM_FORCED_LEVEL_MANUAL ;
 int EINVAL ;
 int PP_SMC_POWER_PROFILE_CUSTOM ;
 int WORKLOAD_POLICY_MAX ;
 int fls (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_set_power_profile_mode (struct smu_context*,long*,int ) ;

int smu_switch_power_profile(struct smu_context *smu,
        enum PP_SMC_POWER_PROFILE type,
        bool en)
{
 struct smu_dpm_context *smu_dpm_ctx = &(smu->smu_dpm);
 long workload;
 uint32_t index;

 if (!smu->pm_enabled)
  return -EINVAL;

 if (!(type < PP_SMC_POWER_PROFILE_CUSTOM))
  return -EINVAL;

 mutex_lock(&smu->mutex);

 if (!en) {
  smu->workload_mask &= ~(1 << smu->workload_prority[type]);
  index = fls(smu->workload_mask);
  index = index > 0 && index <= WORKLOAD_POLICY_MAX ? index - 1 : 0;
  workload = smu->workload_setting[index];
 } else {
  smu->workload_mask |= (1 << smu->workload_prority[type]);
  index = fls(smu->workload_mask);
  index = index <= WORKLOAD_POLICY_MAX ? index - 1 : 0;
  workload = smu->workload_setting[index];
 }

 if (smu_dpm_ctx->dpm_level != AMD_DPM_FORCED_LEVEL_MANUAL)
  smu_set_power_profile_mode(smu, &workload, 0);

 mutex_unlock(&smu->mutex);

 return 0;
}
