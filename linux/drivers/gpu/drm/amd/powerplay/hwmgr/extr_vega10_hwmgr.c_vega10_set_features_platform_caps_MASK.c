#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ clock_stretcher_support; scalar_t__ power_containment_support; scalar_t__ psm_didt_support; scalar_t__ gc_didt_support; scalar_t__ edc_didt_support; scalar_t__ dbr_ramping_support; scalar_t__ tcp_ramping_support; scalar_t__ td_ramping_support; scalar_t__ db_ramping_support; scalar_t__ sq_ramping_support; scalar_t__ didt_support; } ;
struct vega10_hwmgr {scalar_t__ vddci_control; TYPE_2__ registry_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {TYPE_3__ platform_descriptor; struct amdgpu_device* adev; scalar_t__ pptable; struct vega10_hwmgr* backend; } ;
struct phm_ppt_v2_information {TYPE_1__* tdp_table; } ;
struct amdgpu_device {int pg_flags; } ;
struct TYPE_4__ {scalar_t__ usClockStretchAmount; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_UVD ; 
 int AMD_PG_SUPPORT_VCE ; 
 int /*<<< orphan*/  PHM_PlatformCaps_AutomaticDCTransition ; 
 int /*<<< orphan*/  PHM_PlatformCaps_CAC ; 
 int /*<<< orphan*/  PHM_PlatformCaps_ClockStretcher ; 
 int /*<<< orphan*/  PHM_PlatformCaps_ControlVDDCI ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DBRRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DBRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DiDtEDCEnable ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DiDtSupport ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DynamicPatchPowerState ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DynamicPowerManagement ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EnableSMU7ThermalManagement ; 
 int /*<<< orphan*/  PHM_PlatformCaps_FanSpeedInTableIsRPM ; 
 int /*<<< orphan*/  PHM_PlatformCaps_GCEDC ; 
 int /*<<< orphan*/  PHM_PlatformCaps_ODFuzzyFanControlSupport ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PSM ; 
 int /*<<< orphan*/  PHM_PlatformCaps_PowerContainment ; 
 int /*<<< orphan*/  PHM_PlatformCaps_RegulatorHot ; 
 int /*<<< orphan*/  PHM_PlatformCaps_SMC ; 
 int /*<<< orphan*/  PHM_PlatformCaps_SQRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_SclkDeepSleep ; 
 int /*<<< orphan*/  PHM_PlatformCaps_TCPRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_TDRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_UVDDPM ; 
 int /*<<< orphan*/  PHM_PlatformCaps_UVDPowerGating ; 
 int /*<<< orphan*/  PHM_PlatformCaps_UnTabledHardwareInterface ; 
 int /*<<< orphan*/  PHM_PlatformCaps_VCEDPM ; 
 int /*<<< orphan*/  PHM_PlatformCaps_VCEPowerGating ; 
 scalar_t__ VEGA10_VOLTAGE_CONTROL_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr)
{
	struct vega10_hwmgr *data = hwmgr->backend;
	struct phm_ppt_v2_information *table_info =
			(struct phm_ppt_v2_information *)hwmgr->pptable;
	struct amdgpu_device *adev = hwmgr->adev;

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_SclkDeepSleep);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_DynamicPatchPowerState);

	if (data->vddci_control == VEGA10_VOLTAGE_CONTROL_NONE)
		FUNC1(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_ControlVDDCI);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_EnableSMU7ThermalManagement);

	if (adev->pg_flags & AMD_PG_SUPPORT_UVD)
		FUNC0(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_UVDPowerGating);

	if (adev->pg_flags & AMD_PG_SUPPORT_VCE)
		FUNC0(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_VCEPowerGating);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_UnTabledHardwareInterface);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_FanSpeedInTableIsRPM);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_ODFuzzyFanControlSupport);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_DynamicPowerManagement);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_SMC);

	/* power tune caps */
	/* assume disabled */
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_PowerContainment);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_DiDtSupport);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_SQRamping);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_DBRamping);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_TDRamping);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_TCPRamping);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_DBRRamping);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_DiDtEDCEnable);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_GCEDC);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_PSM);

	if (data->registry_data.didt_support) {
		FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_DiDtSupport);
		if (data->registry_data.sq_ramping_support)
			FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_SQRamping);
		if (data->registry_data.db_ramping_support)
			FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_DBRamping);
		if (data->registry_data.td_ramping_support)
			FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_TDRamping);
		if (data->registry_data.tcp_ramping_support)
			FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_TCPRamping);
		if (data->registry_data.dbr_ramping_support)
			FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_DBRRamping);
		if (data->registry_data.edc_didt_support)
			FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_DiDtEDCEnable);
		if (data->registry_data.gc_didt_support)
			FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_GCEDC);
		if (data->registry_data.psm_didt_support)
			FUNC0(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_PSM);
	}

	if (data->registry_data.power_containment_support)
		FUNC0(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_PowerContainment);
	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_CAC);

	if (table_info->tdp_table->usClockStretchAmount &&
			data->registry_data.clock_stretcher_support)
		FUNC0(hwmgr->platform_descriptor.platformCaps,
				PHM_PlatformCaps_ClockStretcher);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_RegulatorHot);
	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_AutomaticDCTransition);

	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_UVDDPM);
	FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_VCEDPM);

	return 0;
}