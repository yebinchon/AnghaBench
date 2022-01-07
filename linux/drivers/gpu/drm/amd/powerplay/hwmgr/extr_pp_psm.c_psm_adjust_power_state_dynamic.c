
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_power_state {int dummy; } ;
struct pp_hwmgr {scalar_t__ request_dpm_level; scalar_t__ dpm_level; long* workload_setting; long power_profile_mode; TYPE_1__* hwmgr_func; int workload_mask; scalar_t__ ps; } ;
struct TYPE_2__ {int (* set_power_profile_mode ) (struct pp_hwmgr*,long*,int ) ;} ;


 scalar_t__ AMD_DPM_FORCED_LEVEL_MANUAL ;
 int Workload_Policy_Max ;
 int fls (int ) ;
 int phm_apply_clock_adjust_rules (struct pp_hwmgr*) ;
 int phm_display_configuration_changed (struct pp_hwmgr*) ;
 int phm_force_dpm_levels (struct pp_hwmgr*,scalar_t__) ;
 int phm_notify_smc_display_config_after_ps_adjustment (struct pp_hwmgr*) ;
 int power_state_management (struct pp_hwmgr*,struct pp_power_state*) ;
 int stub1 (struct pp_hwmgr*,long*,int ) ;

int psm_adjust_power_state_dynamic(struct pp_hwmgr *hwmgr, bool skip_display_settings,
      struct pp_power_state *new_ps)
{
 uint32_t index;
 long workload;

 if (!skip_display_settings)
  phm_display_configuration_changed(hwmgr);

 if (hwmgr->ps)
  power_state_management(hwmgr, new_ps);
 else




  phm_apply_clock_adjust_rules(hwmgr);

 if (!skip_display_settings)
  phm_notify_smc_display_config_after_ps_adjustment(hwmgr);

 if (!phm_force_dpm_levels(hwmgr, hwmgr->request_dpm_level))
  hwmgr->dpm_level = hwmgr->request_dpm_level;

 if (hwmgr->dpm_level != AMD_DPM_FORCED_LEVEL_MANUAL) {
  index = fls(hwmgr->workload_mask);
  index = index > 0 && index <= Workload_Policy_Max ? index - 1 : 0;
  workload = hwmgr->workload_setting[index];

  if (hwmgr->power_profile_mode != workload && hwmgr->hwmgr_func->set_power_profile_mode)
   hwmgr->hwmgr_func->set_power_profile_mode(hwmgr, &workload, 0);
 }

 return 0;
}
