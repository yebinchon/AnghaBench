#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; int /*<<< orphan*/  adev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_DynamicPatchPowerState ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DynamicPowerManagement ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DynamicUVDState ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableSMU7ThermalManagement ; 
 int /*<<< orphan*/  PHM_PlatformCaps_FanSpeedInTableIsRPM ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PCIEPerformanceRequest ; 
 int /*<<< orphan*/  PHM_PlatformCaps_SMC ; 
 int /*<<< orphan*/  PHM_PlatformCaps_UVDDPM ; 
 int /*<<< orphan*/  PHM_PlatformCaps_VCEDPM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct pp_hwmgr *hwmgr)
{
	FUNC2(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_PCIEPerformanceRequest);

	FUNC1(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_UVDDPM);
	FUNC1(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_VCEDPM);

#if defined(CONFIG_ACPI)
	if (amdgpu_acpi_is_pcie_performance_request_supported(hwmgr->adev))
		phm_cap_set(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_PCIEPerformanceRequest);
#endif

	FUNC1(hwmgr->platform_descriptor.platformCaps,
		PHM_PlatformCaps_DynamicPatchPowerState);

	FUNC1(hwmgr->platform_descriptor.platformCaps,
		PHM_PlatformCaps_EnableSMU7ThermalManagement);

	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_DynamicPowerManagement);

	FUNC1(hwmgr->platform_descriptor.platformCaps,
					PHM_PlatformCaps_SMC);

	FUNC1(hwmgr->platform_descriptor.platformCaps,
					PHM_PlatformCaps_DynamicUVDState);

	FUNC1(hwmgr->platform_descriptor.platformCaps,
						PHM_PlatformCaps_FanSpeedInTableIsRPM);
	return;
}