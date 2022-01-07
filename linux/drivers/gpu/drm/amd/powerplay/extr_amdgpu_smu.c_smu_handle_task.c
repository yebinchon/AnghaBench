
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
typedef enum amd_pp_task { ____Placeholder_amd_pp_task } amd_pp_task ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;





 int smu_adjust_power_state_dynamic (struct smu_context*,int,int) ;
 int smu_pre_display_config_changed (struct smu_context*) ;
 int smu_set_cpu_power_state (struct smu_context*) ;

int smu_handle_task(struct smu_context *smu,
      enum amd_dpm_forced_level level,
      enum amd_pp_task task_id)
{
 int ret = 0;

 switch (task_id) {
 case 129:
  ret = smu_pre_display_config_changed(smu);
  if (ret)
   return ret;
  ret = smu_set_cpu_power_state(smu);
  if (ret)
   return ret;
  ret = smu_adjust_power_state_dynamic(smu, level, 0);
  break;
 case 130:
 case 128:
  ret = smu_adjust_power_state_dynamic(smu, level, 1);
  break;
 default:
  break;
 }

 return ret;
}
