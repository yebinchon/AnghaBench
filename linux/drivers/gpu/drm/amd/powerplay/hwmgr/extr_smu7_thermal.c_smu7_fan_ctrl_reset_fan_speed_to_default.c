
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bNoFan; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_2__ thermal_controller; } ;


 int FDO_PWM_MODE_STATIC ;
 int PHM_PlatformCaps_MicrocodeFanControl ;
 scalar_t__ PP_CAP (int ) ;
 int smu7_fan_ctrl_set_default_mode (struct pp_hwmgr*) ;
 int smu7_fan_ctrl_set_static_mode (struct pp_hwmgr*,int ) ;
 int smu7_fan_ctrl_start_smc_fan_control (struct pp_hwmgr*) ;

int smu7_fan_ctrl_reset_fan_speed_to_default(struct pp_hwmgr *hwmgr)
{
 int result;

 if (hwmgr->thermal_controller.fanInfo.bNoFan)
  return 0;

 if (PP_CAP(PHM_PlatformCaps_MicrocodeFanControl)) {
  result = smu7_fan_ctrl_set_static_mode(hwmgr, FDO_PWM_MODE_STATIC);
  if (!result)
   result = smu7_fan_ctrl_start_smc_fan_control(hwmgr);
 } else
  result = smu7_fan_ctrl_set_default_mode(hwmgr);

 return result;
}
