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
struct smu7_hwmgr {int is_tlu_enabled; int pcie_gen_cap; int pcie_spc_cap; int /*<<< orphan*/  pcie_lane_cap; } ;
struct TYPE_5__ {int engineClock; int memoryClock; } ;
struct TYPE_6__ {int hardwarePerformanceLevels; int minimumClocksReductionPercentage; int vbiosInterruptId; TYPE_2__ clockStep; int /*<<< orphan*/  hardwareActivityPerformanceLevels; int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {scalar_t__ pp_table_version; TYPE_3__ platform_descriptor; struct amdgpu_device* adev; struct smu7_hwmgr* backend; } ;
struct TYPE_4__ {int pcie_gen_mask; int /*<<< orphan*/  pcie_mlw_mask; } ;
struct amdgpu_device {TYPE_1__ pm; } ;

/* Variables and functions */
 int CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EVV ; 
 scalar_t__ PP_TABLE_V0 ; 
 scalar_t__ PP_TABLE_V1 ; 
 int /*<<< orphan*/  SMU7_MAX_HARDWARE_POWERLEVELS ; 
 struct smu7_hwmgr* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC7 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC8 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC9 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC10 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC11 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC12 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC13 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC14(struct pp_hwmgr *hwmgr)
{
	struct smu7_hwmgr *data;
	int result = 0;

	data = FUNC0(sizeof(struct smu7_hwmgr), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	hwmgr->backend = data;
	FUNC10(hwmgr);
	FUNC8(hwmgr);

	/* Get leakage voltage based on leakage ID. */
	if (FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_EVV)) {
		result = FUNC6(hwmgr);
		if (result) {
			FUNC3("Get EVV Voltage Failed.  Abort Driver loading!\n");
			return -EINVAL;
		}
	} else {
		FUNC5(hwmgr);
	}

	if (hwmgr->pp_table_version == PP_TABLE_V1) {
		FUNC4(hwmgr);
		FUNC12(hwmgr);
	} else if (hwmgr->pp_table_version == PP_TABLE_V0) {
		FUNC9(hwmgr);
		FUNC11(hwmgr);
	}

	/* Initalize Dynamic State Adjustment Rule Settings */
	result = FUNC2(hwmgr);

	if (0 == result) {
		struct amdgpu_device *adev = hwmgr->adev;

		data->is_tlu_enabled = false;

		hwmgr->platform_descriptor.hardwareActivityPerformanceLevels =
							SMU7_MAX_HARDWARE_POWERLEVELS;
		hwmgr->platform_descriptor.hardwarePerformanceLevels = 2;
		hwmgr->platform_descriptor.minimumClocksReductionPercentage = 50;

		data->pcie_gen_cap = adev->pm.pcie_gen_mask;
		if (data->pcie_gen_cap & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3)
			data->pcie_spc_cap = 20;
		data->pcie_lane_cap = adev->pm.pcie_mlw_mask;

		hwmgr->platform_descriptor.vbiosInterruptId = 0x20000400; /* IRQ_SOURCE1_SW_INT */
/* The true clock step depends on the frequency, typically 4.5 or 9 MHz. Here we use 5. */
		hwmgr->platform_descriptor.clockStep.engineClock = 500;
		hwmgr->platform_descriptor.clockStep.memoryClock = 500;
		FUNC13(hwmgr);
	} else {
		/* Ignore return value in here, we are cleaning up a mess. */
		FUNC7(hwmgr);
	}

	return 0;
}