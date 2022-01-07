
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {scalar_t__ chip_id; TYPE_1__ platform_descriptor; } ;


 scalar_t__ CHIP_POLARIS10 ;
 scalar_t__ CHIP_POLARIS11 ;
 int PHM_PlatformCaps_AutomaticDCTransition ;
 int PHM_PlatformCaps_DBRamping ;
 int PHM_PlatformCaps_EVV ;
 int PHM_PlatformCaps_RegulatorHot ;
 int PHM_PlatformCaps_SPLLShutdownSupport ;
 int PHM_PlatformCaps_SQRamping ;
 int PHM_PlatformCaps_TCPRamping ;
 int PHM_PlatformCaps_TDRamping ;
 int phm_cap_set (int ,int ) ;

int polaris_set_asic_special_caps(struct pp_hwmgr *hwmgr)
{
 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
      PHM_PlatformCaps_EVV);
 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
      PHM_PlatformCaps_SQRamping);
 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
      PHM_PlatformCaps_RegulatorHot);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
     PHM_PlatformCaps_AutomaticDCTransition);

 if (hwmgr->chip_id != CHIP_POLARIS10)
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
     PHM_PlatformCaps_SPLLShutdownSupport);

 if (hwmgr->chip_id != CHIP_POLARIS11) {
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
       PHM_PlatformCaps_DBRamping);
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
       PHM_PlatformCaps_TDRamping);
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
       PHM_PlatformCaps_TCPRamping);
 }
 return 0;
}
