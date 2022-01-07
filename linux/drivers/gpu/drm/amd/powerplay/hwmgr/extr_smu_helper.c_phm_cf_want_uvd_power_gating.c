
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;


 int PHM_PlatformCaps_UVDPowerGating ;
 int phm_cap_enabled (int ,int ) ;

bool phm_cf_want_uvd_power_gating(struct pp_hwmgr *hwmgr)
{
 return phm_cap_enabled(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_UVDPowerGating);
}
