
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int pm_en; } ;


 int EINVAL ;
 int phm_enable_dynamic_state_management (struct pp_hwmgr*) ;
 int phm_setup_asic (struct pp_hwmgr*) ;
 int phm_start_thermal_controller (struct pp_hwmgr*) ;
 int psm_adjust_power_state_dynamic (struct pp_hwmgr*,int,int *) ;
 int psm_set_performance_states (struct pp_hwmgr*) ;

int hwmgr_resume(struct pp_hwmgr *hwmgr)
{
 int ret = 0;

 if (!hwmgr)
  return -EINVAL;

 if (!hwmgr->pm_en)
  return 0;

 ret = phm_setup_asic(hwmgr);
 if (ret)
  return ret;

 ret = phm_enable_dynamic_state_management(hwmgr);
 if (ret)
  return ret;
 ret = phm_start_thermal_controller(hwmgr);
 ret |= psm_set_performance_states(hwmgr);
 if (ret)
  return ret;

 ret = psm_adjust_power_state_dynamic(hwmgr, 0, ((void*)0));

 return ret;
}
