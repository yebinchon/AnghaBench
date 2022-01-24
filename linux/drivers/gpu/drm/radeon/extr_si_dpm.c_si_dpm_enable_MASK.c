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
struct si_power_info {scalar_t__ voltage_control_svi2; } ;
struct rv7xx_power_info {scalar_t__ thermal_protection; scalar_t__ dynamic_ss; scalar_t__ voltage_control; scalar_t__ mvdd_control; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct evergreen_power_info {int dynamic_ac_timing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 struct evergreen_power_info* FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ps*) ; 
 struct rv7xx_power_info* FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 struct si_power_info* FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*) ; 
 scalar_t__ FUNC22 (struct radeon_device*) ; 
 int FUNC23 (struct radeon_device*,int) ; 
 int FUNC24 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC25 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC26 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC32 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC36 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC37 (struct radeon_device*) ; 
 int FUNC38 (struct radeon_device*) ; 

int FUNC39(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC3(rdev);
	struct evergreen_power_info *eg_pi = FUNC1(rdev);
	struct si_power_info *si_pi = FUNC13(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;
	int ret;

	if (FUNC22(rdev))
		return -EINVAL;
	if (pi->voltage_control || si_pi->voltage_control_svi2)
		FUNC11(rdev, true);
	if (pi->mvdd_control)
		FUNC12(rdev);
	if (pi->voltage_control || si_pi->voltage_control_svi2) {
		ret = FUNC4(rdev);
		if (ret) {
			FUNC0("si_construct_voltage_tables failed\n");
			return ret;
		}
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC19(rdev);
		if (ret)
			eg_pi->dynamic_ac_timing = false;
	}
	if (pi->dynamic_ss)
		FUNC9(rdev, true);
	if (pi->thermal_protection)
		FUNC10(rdev, true);
	FUNC35(rdev);
	FUNC29(rdev);
	FUNC32(rdev);
	FUNC33(rdev);
	FUNC31(rdev);
	FUNC7(rdev);
	FUNC34(rdev);
	ret = FUNC38(rdev);
	if (ret) {
		FUNC0("si_upload_firmware failed\n");
		return ret;
	}
	ret = FUNC27(rdev);
	if (ret) {
		FUNC0("si_process_firmware_header failed\n");
		return ret;
	}
	ret = FUNC17(rdev);
	if (ret) {
		FUNC0("si_initial_switch_from_arb_f0_to_f1 failed\n");
		return ret;
	}
	ret = FUNC16(rdev);
	if (ret) {
		FUNC0("si_init_smc_table failed\n");
		return ret;
	}
	ret = FUNC15(rdev);
	if (ret) {
		FUNC0("si_init_smc_spll_table failed\n");
		return ret;
	}
	ret = FUNC14(rdev);
	if (ret) {
		FUNC0("si_init_arb_table_index failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC24(rdev, boot_ps);
		if (ret) {
			FUNC0("si_populate_mc_reg_table failed\n");
			return ret;
		}
	}
	ret = FUNC20(rdev);
	if (ret) {
		FUNC0("si_initialize_smc_cac_tables failed\n");
		return ret;
	}
	ret = FUNC18(rdev);
	if (ret) {
		FUNC0("si_initialize_hardware_cac_manager failed\n");
		return ret;
	}
	ret = FUNC21(rdev);
	if (ret) {
		FUNC0("si_initialize_smc_dte_tables failed\n");
		return ret;
	}
	ret = FUNC25(rdev, boot_ps);
	if (ret) {
		FUNC0("si_populate_smc_tdp_limits failed\n");
		return ret;
	}
	ret = FUNC26(rdev, boot_ps);
	if (ret) {
		FUNC0("si_populate_smc_tdp_limits_2 failed\n");
		return ret;
	}
	FUNC30(rdev);
	FUNC28(rdev);
	FUNC5(rdev);
	ret = FUNC23(rdev, false);
	if (ret) {
		FUNC0("si_notify_smc_display_change failed\n");
		return ret;
	}
	FUNC8(rdev, true);
	FUNC36(rdev);

	FUNC6(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, true);

	FUNC37(rdev);

	FUNC2(rdev, boot_ps);

	return 0;
}