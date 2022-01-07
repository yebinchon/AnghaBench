
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; int adev; } ;


 int PHM_PlatformCaps_DynamicPatchPowerState ;
 int PHM_PlatformCaps_DynamicPowerManagement ;
 int PHM_PlatformCaps_DynamicUVDState ;
 int PHM_PlatformCaps_EnableSMU7ThermalManagement ;
 int PHM_PlatformCaps_FanSpeedInTableIsRPM ;
 int PHM_PlatformCaps_PCIEPerformanceRequest ;
 int PHM_PlatformCaps_SMC ;
 int PHM_PlatformCaps_UVDDPM ;
 int PHM_PlatformCaps_VCEDPM ;
 scalar_t__ amdgpu_acpi_is_pcie_performance_request_supported (int ) ;
 int phm_cap_set (int ,int ) ;
 int phm_cap_unset (int ,int ) ;

void hwmgr_init_default_caps(struct pp_hwmgr *hwmgr)
{
 phm_cap_unset(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_PCIEPerformanceRequest);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_UVDDPM);
 phm_cap_set(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_VCEDPM);






 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
  PHM_PlatformCaps_DynamicPatchPowerState);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
  PHM_PlatformCaps_EnableSMU7ThermalManagement);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_DynamicPowerManagement);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
     PHM_PlatformCaps_SMC);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
     PHM_PlatformCaps_DynamicUVDState);

 phm_cap_set(hwmgr->platform_descriptor.platformCaps,
      PHM_PlatformCaps_FanSpeedInTableIsRPM);
 return;
}
