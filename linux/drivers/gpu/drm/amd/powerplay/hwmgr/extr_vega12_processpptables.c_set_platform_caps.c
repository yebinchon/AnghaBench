
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int ATOM_VEGA12_PP_PLATFORM_CAP_BACO ;
 int ATOM_VEGA12_PP_PLATFORM_CAP_BAMACO ;
 int ATOM_VEGA12_PP_PLATFORM_CAP_POWERPLAY ;
 int ATOM_VEGA12_PP_PLATFORM_CAP_SBIOSPOWERSOURCE ;
 int PHM_PlatformCaps_BACO ;
 int PHM_PlatformCaps_BAMACO ;
 int PHM_PlatformCaps_BiosPowerSourceControl ;
 int PHM_PlatformCaps_PowerPlaySupport ;
 int set_hw_cap (struct pp_hwmgr*,int,int ) ;

__attribute__((used)) static int set_platform_caps(struct pp_hwmgr *hwmgr, uint32_t powerplay_caps)
{
 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA12_PP_PLATFORM_CAP_POWERPLAY),
   PHM_PlatformCaps_PowerPlaySupport);

 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA12_PP_PLATFORM_CAP_SBIOSPOWERSOURCE),
   PHM_PlatformCaps_BiosPowerSourceControl);

 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA12_PP_PLATFORM_CAP_BACO),
   PHM_PlatformCaps_BACO);

 set_hw_cap(
   hwmgr,
   0 != (powerplay_caps & ATOM_VEGA12_PP_PLATFORM_CAP_BAMACO),
    PHM_PlatformCaps_BAMACO);

 return 0;
}
