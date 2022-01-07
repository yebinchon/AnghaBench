
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int ATOM_VEGA10_PP_PLATFORM_CAP_BACO ;
 int ATOM_VEGA10_PP_PLATFORM_CAP_HARDWAREDC ;
 int ATOM_VEGA10_PP_PLATFORM_CAP_POWERPLAY ;
 int ATOM_VEGA10_PP_PLATFORM_CAP_SBIOSPOWERSOURCE ;
 int ATOM_VEGA10_PP_PLATFORM_COMBINE_PCC_WITH_THERMAL_SIGNAL ;
 int PHM_PlatformCaps_AutomaticDCTransition ;
 int PHM_PlatformCaps_BACO ;
 int PHM_PlatformCaps_BiosPowerSourceControl ;
 int PHM_PlatformCaps_CombinePCCWithThermalSignal ;
 int PHM_PlatformCaps_PowerPlaySupport ;
 int set_hw_cap (struct pp_hwmgr*,int,int ) ;

__attribute__((used)) static int set_platform_caps(struct pp_hwmgr *hwmgr, uint32_t powerplay_caps)
{
 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA10_PP_PLATFORM_CAP_POWERPLAY),
   PHM_PlatformCaps_PowerPlaySupport);

 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA10_PP_PLATFORM_CAP_SBIOSPOWERSOURCE),
   PHM_PlatformCaps_BiosPowerSourceControl);

 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA10_PP_PLATFORM_CAP_HARDWAREDC),
   PHM_PlatformCaps_AutomaticDCTransition);

 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA10_PP_PLATFORM_CAP_BACO),
   PHM_PlatformCaps_BACO);

 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA10_PP_PLATFORM_COMBINE_PCC_WITH_THERMAL_SIGNAL),
   PHM_PlatformCaps_CombinePCCWithThermalSignal);

 return 0;
}
