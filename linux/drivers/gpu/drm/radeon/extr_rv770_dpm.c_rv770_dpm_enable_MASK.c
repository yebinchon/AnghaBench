#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; scalar_t__ mvdd_control; scalar_t__ dcodt; scalar_t__ voltage_control; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int platform_caps; struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; } ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_BACKBIAS ; 
 scalar_t__ CHIP_RV710 ; 
 scalar_t__ CHIP_RV730 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int FUNC12 (struct radeon_device*) ; 
 struct rv7xx_power_info* FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,int) ; 
 int FUNC15 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int FUNC29 (struct radeon_device*) ; 

int FUNC30(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC13(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;
	int ret;

	if (pi->gfx_clock_gating)
		FUNC25(rdev);

	if (FUNC4(rdev))
		return -EINVAL;

	if (pi->voltage_control) {
		FUNC11(rdev, true);
		ret = FUNC3(rdev);
		if (ret) {
			FUNC0("rv770_construct_vddc_table failed\n");
			return ret;
		}
	}

	if (pi->dcodt)
		FUNC26(rdev);

	if (pi->mvdd_control) {
		ret = FUNC12(rdev);
		if (ret) {
			FUNC0("rv770_get_mvdd_configuration failed\n");
			return ret;
		}
	}

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
		FUNC6(rdev, true);

	FUNC9(rdev, true);

	if (pi->thermal_protection)
		FUNC10(rdev, true);

	FUNC19(rdev);
	FUNC27(rdev);
	FUNC18(rdev);
	FUNC22(rdev);
	FUNC23(rdev);
	FUNC21(rdev);
	FUNC17(rdev);
	FUNC7(rdev);
	FUNC24(rdev);

	if (pi->dynamic_pcie_gen2)
		FUNC8(rdev, true);

	ret = FUNC29(rdev);
	if (ret) {
		FUNC0("rv770_upload_firmware failed\n");
		return ret;
	}
	ret = FUNC15(rdev, boot_ps);
	if (ret) {
		FUNC0("rv770_init_smc_table failed\n");
		return ret;
	}

	FUNC20(rdev);
	FUNC1(rdev);

	if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
		FUNC2(rdev);
	else
		FUNC28(rdev);

	if (pi->gfx_clock_gating)
		FUNC14(rdev, true);

	if (pi->mg_clock_gating)
		FUNC16(rdev, true);

	FUNC5(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, true);

	return 0;
}