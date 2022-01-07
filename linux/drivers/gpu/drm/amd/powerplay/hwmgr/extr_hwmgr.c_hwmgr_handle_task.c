
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_power_state {int dummy; } ;
struct pp_hwmgr {int dummy; } ;
typedef enum amd_pp_task { ____Placeholder_amd_pp_task } amd_pp_task ;
typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
typedef enum PP_StateUILabel { ____Placeholder_PP_StateUILabel } PP_StateUILabel ;






 int EINVAL ;
 int phm_pre_display_configuration_changed (struct pp_hwmgr*) ;
 int phm_set_cpu_power_state (struct pp_hwmgr*) ;
 int power_state_convert (int) ;
 int psm_adjust_power_state_dynamic (struct pp_hwmgr*,int,struct pp_power_state*) ;
 int psm_set_performance_states (struct pp_hwmgr*) ;
 int psm_set_user_performance_state (struct pp_hwmgr*,int,struct pp_power_state**) ;

int hwmgr_handle_task(struct pp_hwmgr *hwmgr, enum amd_pp_task task_id,
  enum amd_pm_state_type *user_state)
{
 int ret = 0;

 if (hwmgr == ((void*)0))
  return -EINVAL;

 switch (task_id) {
 case 130:
  ret = phm_pre_display_configuration_changed(hwmgr);
  if (ret)
   return ret;
  ret = phm_set_cpu_power_state(hwmgr);
  if (ret)
   return ret;
  ret = psm_set_performance_states(hwmgr);
  if (ret)
   return ret;
  ret = psm_adjust_power_state_dynamic(hwmgr, 0, ((void*)0));
  break;
 case 129:
 {
  enum PP_StateUILabel requested_ui_label;
  struct pp_power_state *requested_ps = ((void*)0);

  if (user_state == ((void*)0)) {
   ret = -EINVAL;
   break;
  }

  requested_ui_label = power_state_convert(*user_state);
  ret = psm_set_user_performance_state(hwmgr, requested_ui_label, &requested_ps);
  if (ret)
   return ret;
  ret = psm_adjust_power_state_dynamic(hwmgr, 1, requested_ps);
  break;
 }
 case 131:
 case 128:
  ret = psm_adjust_power_state_dynamic(hwmgr, 1, ((void*)0));
  break;
 default:
  break;
 }
 return ret;
}
