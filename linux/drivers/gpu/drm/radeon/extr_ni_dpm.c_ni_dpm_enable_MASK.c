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
struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; scalar_t__ dynamic_ss; scalar_t__ voltage_control; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct evergreen_power_info {int dynamic_ac_timing; scalar_t__ ls_clock_gating; scalar_t__ memory_transition; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int FUNC7 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 struct evergreen_power_info* FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,int) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*,int) ; 
 int FUNC24 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC25 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct radeon_device*,int) ; 
 struct rv7xx_power_info* FUNC33 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC36 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC37 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC38 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC39 (struct radeon_device*) ; 
 int FUNC40 (struct radeon_device*) ; 

int FUNC41(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC33(rdev);
	struct evergreen_power_info *eg_pi = FUNC9(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;
	int ret;

	if (pi->gfx_clock_gating)
		FUNC10(rdev);
	if (FUNC1(rdev))
		return -EINVAL;
	if (pi->mg_clock_gating)
		FUNC22(rdev);
	if (eg_pi->ls_clock_gating)
		FUNC20(rdev);
	if (pi->voltage_control) {
		FUNC32(rdev, true);
		ret = FUNC2(rdev);
		if (ret) {
			FUNC0("cypress_construct_voltage_tables failed\n");
			return ret;
		}
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC18(rdev);
		if (ret)
			eg_pi->dynamic_ac_timing = false;
	}
	if (pi->dynamic_ss)
		FUNC6(rdev, true);
	if (pi->thermal_protection)
		FUNC31(rdev, true);
	FUNC39(rdev);
	FUNC34(rdev);
	FUNC36(rdev);
	FUNC37(rdev);
	FUNC35(rdev);
	FUNC3(rdev);
	FUNC38(rdev);
	if (pi->dynamic_pcie_gen2)
		FUNC11(rdev, true);
	ret = FUNC40(rdev);
	if (ret) {
		FUNC0("rv770_upload_firmware failed\n");
		return ret;
	}
	ret = FUNC26(rdev);
	if (ret) {
		FUNC0("ni_process_firmware_header failed\n");
		return ret;
	}
	ret = FUNC16(rdev);
	if (ret) {
		FUNC0("ni_initial_switch_from_arb_f0_to_f1 failed\n");
		return ret;
	}
	ret = FUNC15(rdev);
	if (ret) {
		FUNC0("ni_init_smc_table failed\n");
		return ret;
	}
	ret = FUNC14(rdev);
	if (ret) {
		FUNC0("ni_init_smc_spll_table failed\n");
		return ret;
	}
	ret = FUNC13(rdev);
	if (ret) {
		FUNC0("ni_init_arb_table_index failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC24(rdev, boot_ps);
		if (ret) {
			FUNC0("ni_populate_mc_reg_table failed\n");
			return ret;
		}
	}
	ret = FUNC19(rdev);
	if (ret) {
		FUNC0("ni_initialize_smc_cac_tables failed\n");
		return ret;
	}
	ret = FUNC17(rdev);
	if (ret) {
		FUNC0("ni_initialize_hardware_cac_manager failed\n");
		return ret;
	}
	ret = FUNC25(rdev, boot_ps);
	if (ret) {
		FUNC0("ni_populate_smc_tdp_limits failed\n");
		return ret;
	}
	FUNC27(rdev);
	FUNC29(rdev);
	ret = FUNC7(rdev, false);
	if (ret) {
		FUNC0("cypress_notify_smc_display_change failed\n");
		return ret;
	}
	FUNC5(rdev, true);
	if (eg_pi->memory_transition)
		FUNC4(rdev, true);
	FUNC8(rdev);
	if (pi->gfx_clock_gating)
		FUNC12(rdev, true);
	if (pi->mg_clock_gating)
		FUNC23(rdev, true);
	if (eg_pi->ls_clock_gating)
		FUNC21(rdev, true);

	FUNC30(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, true);

	FUNC28(rdev, boot_ps);

	return 0;
}