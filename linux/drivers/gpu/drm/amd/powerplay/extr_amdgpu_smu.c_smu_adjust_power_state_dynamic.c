
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_dpm_context {int dpm_level; } ;
struct smu_context {long* workload_setting; long power_profile_mode; int workload_mask; int pm_enabled; struct smu_dpm_context smu_dpm; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;


 scalar_t__ AMD_DPM_FORCED_LEVEL_MANUAL ;
 int EINVAL ;
 int WORKLOAD_POLICY_MAX ;
 int fls (int ) ;
 int pr_err (char*) ;
 int smu_apply_clocks_adjust_rules (struct smu_context*) ;
 int smu_asic_set_performance_level (struct smu_context*,int) ;
 int smu_default_set_performance_level (struct smu_context*,int) ;
 int smu_display_config_changed (struct smu_context*) ;
 int smu_notify_smc_dispaly_config (struct smu_context*) ;
 int smu_set_power_profile_mode (struct smu_context*,long*,int ) ;

int smu_adjust_power_state_dynamic(struct smu_context *smu,
       enum amd_dpm_forced_level level,
       bool skip_display_settings)
{
 int ret = 0;
 int index = 0;
 long workload;
 struct smu_dpm_context *smu_dpm_ctx = &(smu->smu_dpm);

 if (!smu->pm_enabled)
  return -EINVAL;

 if (!skip_display_settings) {
  ret = smu_display_config_changed(smu);
  if (ret) {
   pr_err("Failed to change display config!");
   return ret;
  }
 }

 ret = smu_apply_clocks_adjust_rules(smu);
 if (ret) {
  pr_err("Failed to apply clocks adjust rules!");
  return ret;
 }

 if (!skip_display_settings) {
  ret = smu_notify_smc_dispaly_config(smu);
  if (ret) {
   pr_err("Failed to notify smc display config!");
   return ret;
  }
 }

 if (smu_dpm_ctx->dpm_level != level) {
  ret = smu_asic_set_performance_level(smu, level);
  if (ret) {
   ret = smu_default_set_performance_level(smu, level);
   if (ret) {
    pr_err("Failed to set performance level!");
    return ret;
   }
  }


  smu_dpm_ctx->dpm_level = level;
 }

 if (smu_dpm_ctx->dpm_level != AMD_DPM_FORCED_LEVEL_MANUAL) {
  index = fls(smu->workload_mask);
  index = index > 0 && index <= WORKLOAD_POLICY_MAX ? index - 1 : 0;
  workload = smu->workload_setting[index];

  if (smu->power_profile_mode != workload)
   smu_set_power_profile_mode(smu, &workload, 0);
 }

 return ret;
}
