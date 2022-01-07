
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;





 int PHM_PlatformCaps_MicrocodeFanControl ;
 int PP_CAP (int ) ;
 int vega12_fan_ctrl_start_smc_fan_control (struct pp_hwmgr*) ;
 int vega12_fan_ctrl_stop_smc_fan_control (struct pp_hwmgr*) ;

__attribute__((used)) static void vega12_set_fan_control_mode(struct pp_hwmgr *hwmgr, uint32_t mode)
{
 switch (mode) {
 case 128:
  break;
 case 129:
  if (PP_CAP(PHM_PlatformCaps_MicrocodeFanControl))
   vega12_fan_ctrl_stop_smc_fan_control(hwmgr);
  break;
 case 130:
  if (PP_CAP(PHM_PlatformCaps_MicrocodeFanControl))
   vega12_fan_ctrl_start_smc_fan_control(hwmgr);
  break;
 default:
  break;
 }
}
