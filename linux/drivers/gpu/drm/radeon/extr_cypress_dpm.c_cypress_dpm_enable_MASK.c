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
struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; scalar_t__ dynamic_ss; scalar_t__ mvdd_control; scalar_t__ voltage_control; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int platform_caps; struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct evergreen_power_info {int dynamic_ac_timing; scalar_t__ memory_transition; } ;

/* Variables and functions */
 int ATOM_PP_PLATFORM_CAP_BACKBIAS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 int FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int FUNC12 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,int) ; 
 int FUNC15 (struct radeon_device*,int) ; 
 int FUNC16 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 struct evergreen_power_info* FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 scalar_t__ FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*,int) ; 
 struct rv7xx_power_info* FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC32 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct radeon_device*) ; 
 int FUNC36 (struct radeon_device*) ; 

int FUNC37(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC27(rdev);
	struct evergreen_power_info *eg_pi = FUNC20(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;
	int ret;

	if (pi->gfx_clock_gating)
		FUNC34(rdev);

	if (FUNC22(rdev))
		return -EINVAL;

	if (pi->voltage_control) {
		FUNC26(rdev, true);
		ret = FUNC1(rdev);
		if (ret) {
			FUNC0("cypress_construct_voltage_tables failed\n");
			return ret;
		}
	}

	if (pi->mvdd_control) {
		ret = FUNC9(rdev);
		if (ret) {
			FUNC0("cypress_get_mvdd_configuration failed\n");
			return ret;
		}
	}

	if (eg_pi->dynamic_ac_timing) {
		FUNC18(rdev);
		FUNC7(rdev, boot_ps);
		ret = FUNC13(rdev);
		if (ret)
			eg_pi->dynamic_ac_timing = false;
		FUNC8(rdev, boot_ps);
	}

	if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
		FUNC24(rdev, true);

	if (pi->dynamic_ss)
		FUNC6(rdev, true);

	if (pi->thermal_protection)
		FUNC25(rdev, true);

	FUNC35(rdev);
	FUNC29(rdev);
	FUNC31(rdev);
	FUNC32(rdev);
	FUNC30(rdev);
	FUNC28(rdev);
	FUNC2(rdev);
	FUNC33(rdev);

	if (pi->dynamic_pcie_gen2)
		FUNC3(rdev, true);

	ret = FUNC36(rdev);
	if (ret) {
		FUNC0("rv770_upload_firmware failed\n");
		return ret;
	}

	ret = FUNC10(rdev);
	if (ret) {
		FUNC0("cypress_get_table_locations failed\n");
		return ret;
	}
	ret = FUNC12(rdev, boot_ps);
	if (ret) {
		FUNC0("cypress_init_smc_table failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC16(rdev, boot_ps);
		if (ret) {
			FUNC0("cypress_populate_mc_reg_table failed\n");
			return ret;
		}
	}

	FUNC17(rdev);

	FUNC21(rdev);

	ret = FUNC15(rdev, false);
	if (ret) {
		FUNC0("cypress_notify_smc_display_change failed\n");
		return ret;
	}
	FUNC5(rdev, true);

	if (eg_pi->memory_transition)
		FUNC4(rdev, true);

	FUNC19(rdev);

	if (pi->gfx_clock_gating)
		FUNC11(rdev, true);

	if (pi->mg_clock_gating)
		FUNC14(rdev, true);

	FUNC23(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, true);

	return 0;
}