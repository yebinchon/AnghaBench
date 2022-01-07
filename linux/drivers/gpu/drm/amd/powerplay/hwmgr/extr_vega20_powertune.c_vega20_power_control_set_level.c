
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int TDPAdjustment; scalar_t__ TDPAdjustmentPolarity; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;


 int PHM_PlatformCaps_PowerContainment ;
 scalar_t__ PP_CAP (int ) ;
 int vega20_set_overdrive_target_percentage (struct pp_hwmgr*,int ) ;

int vega20_power_control_set_level(struct pp_hwmgr *hwmgr)
{
 int adjust_percent, result = 0;

 if (PP_CAP(PHM_PlatformCaps_PowerContainment)) {
  adjust_percent =
    hwmgr->platform_descriptor.TDPAdjustmentPolarity ?
    hwmgr->platform_descriptor.TDPAdjustment :
    (-1 * hwmgr->platform_descriptor.TDPAdjustment);
  result = vega20_set_overdrive_target_percentage(hwmgr,
    (uint32_t)adjust_percent);
 }
 return result;
}
