
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int FDO_PWM_MODE_STATIC ;
 int PHM_PlatformCaps_MicrocodeFanControl ;
 scalar_t__ PP_CAP (int ) ;
 int smu7_fan_ctrl_set_static_mode (struct pp_hwmgr*,int ) ;
 int smu7_fan_ctrl_start_smc_fan_control (struct pp_hwmgr*) ;

__attribute__((used)) static int smu7_thermal_start_smc_fan_control(struct pp_hwmgr *hwmgr)
{





 if (PP_CAP(PHM_PlatformCaps_MicrocodeFanControl)) {
  smu7_fan_ctrl_start_smc_fan_control(hwmgr);
  smu7_fan_ctrl_set_static_mode(hwmgr, FDO_PWM_MODE_STATIC);
 }

 return 0;
}
