
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PHM_PlatformCaps_MicrocodeFanControl ;
 scalar_t__ PP_CAP (int ) ;
 int vega10_fan_ctrl_start_smc_fan_control (struct pp_hwmgr*) ;

int vega10_thermal_start_smc_fan_control(struct pp_hwmgr *hwmgr)
{





 if (PP_CAP(PHM_PlatformCaps_MicrocodeFanControl))
  vega10_fan_ctrl_start_smc_fan_control(hwmgr);

 return 0;
}
