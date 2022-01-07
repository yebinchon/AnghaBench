
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;





 int PHM_PlatformCaps_MicrocodeFanControl ;
 int phm_cap_enabled (int ,int ) ;
 int smu7_fan_ctrl_set_fan_speed_percent (struct pp_hwmgr*,int) ;
 int smu7_fan_ctrl_set_static_mode (struct pp_hwmgr*,int) ;
 int smu7_fan_ctrl_start_smc_fan_control (struct pp_hwmgr*) ;
 int smu7_fan_ctrl_stop_smc_fan_control (struct pp_hwmgr*) ;

__attribute__((used)) static void smu7_set_fan_control_mode(struct pp_hwmgr *hwmgr, uint32_t mode)
{
 switch (mode) {
 case 128:
  smu7_fan_ctrl_set_fan_speed_percent(hwmgr, 100);
  break;
 case 129:
  if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_MicrocodeFanControl))
   smu7_fan_ctrl_stop_smc_fan_control(hwmgr);
  break;
 case 130:
  if (!smu7_fan_ctrl_set_static_mode(hwmgr, mode))
   smu7_fan_ctrl_start_smc_fan_control(hwmgr);
  break;
 default:
  break;
 }
}
