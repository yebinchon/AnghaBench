
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int pm_en; } ;


 int phm_disable_smc_firmware_ctf (struct pp_hwmgr*) ;
 int phm_power_down_asic (struct pp_hwmgr*) ;
 int psm_adjust_power_state_dynamic (struct pp_hwmgr*,int,int *) ;
 int psm_set_boot_states (struct pp_hwmgr*) ;

int hwmgr_suspend(struct pp_hwmgr *hwmgr)
{
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en)
  return 0;

 phm_disable_smc_firmware_ctf(hwmgr);
 ret = psm_set_boot_states(hwmgr);
 if (ret)
  return ret;
 ret = psm_adjust_power_state_dynamic(hwmgr, 1, ((void*)0));
 if (ret)
  return ret;
 ret = phm_power_down_asic(hwmgr);

 return ret;
}
