
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {int feature_mask; int od_enabled; TYPE_1__ platform_descriptor; } ;


 int PHM_PlatformCaps_CAC ;
 int PHM_PlatformCaps_PowerContainment ;
 int PHM_PlatformCaps_SclkDeepSleep ;
 int PP_OVERDRIVE_MASK ;
 int PP_POWER_CONTAINMENT_MASK ;
 int PP_SCLK_DEEP_SLEEP_MASK ;
 int phm_cap_set (int ,int ) ;
 int phm_cap_unset (int ,int ) ;

int hwmgr_set_user_specify_caps(struct pp_hwmgr *hwmgr)
{
 if (hwmgr->feature_mask & PP_SCLK_DEEP_SLEEP_MASK)
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_SclkDeepSleep);
 else
  phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_SclkDeepSleep);

 if (hwmgr->feature_mask & PP_POWER_CONTAINMENT_MASK) {
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
       PHM_PlatformCaps_PowerContainment);
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_CAC);
 } else {
  phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
       PHM_PlatformCaps_PowerContainment);
  phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_CAC);
 }

 if (hwmgr->feature_mask & PP_OVERDRIVE_MASK)
  hwmgr->od_enabled = 1;

 return 0;
}
