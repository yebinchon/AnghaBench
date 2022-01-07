
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;


 int PHM_PlatformCaps_DBRamping ;
 int PHM_PlatformCaps_EngineSpreadSpectrumSupport ;
 int PHM_PlatformCaps_MemorySpreadSpectrumSupport ;
 int PHM_PlatformCaps_SQRamping ;
 int PHM_PlatformCaps_TCPRamping ;
 int PHM_PlatformCaps_TDRamping ;
 int phm_cap_set (int ,int ) ;
 int phm_cap_unset (int ,int ) ;

int ci_set_asic_special_caps(struct pp_hwmgr *hwmgr)
{
 phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_SQRamping);
 phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_DBRamping);
 phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_TDRamping);
 phm_cap_unset(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_TCPRamping);
 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_MemorySpreadSpectrumSupport);
 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_EngineSpreadSpectrumSupport);
 return 0;
}
