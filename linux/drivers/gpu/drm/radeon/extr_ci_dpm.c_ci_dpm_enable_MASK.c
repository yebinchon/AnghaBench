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
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct ci_power_info {scalar_t__ voltage_control; int caps_dynamic_ac_timing; scalar_t__ thermal_protection; scalar_t__ dynamic_ss; } ;

/* Variables and functions */
 scalar_t__ CISLANDS_VOLTAGE_CONTROL_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 int FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*,int) ; 
 int FUNC7 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,int) ; 
 int FUNC13 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 struct ci_power_info* FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 scalar_t__ FUNC21 (struct radeon_device*) ; 
 int FUNC22 (struct radeon_device*,int) ; 
 int FUNC23 (struct radeon_device*) ; 
 int FUNC24 (struct radeon_device*) ; 
 int FUNC25 (struct radeon_device*) ; 
 int FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct radeon_device*) ; 
 int FUNC29 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC32 (struct radeon_device*) ; 

int FUNC33(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC16(rdev);
	struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;
	int ret;

	if (FUNC21(rdev))
		return -EINVAL;
	if (pi->voltage_control != CISLANDS_VOLTAGE_CONTROL_NONE) {
		FUNC14(rdev);
		ret = FUNC1(rdev);
		if (ret) {
			FUNC0("ci_construct_voltage_tables failed\n");
			return ret;
		}
	}
	if (pi->caps_dynamic_ac_timing) {
		ret = FUNC20(rdev);
		if (ret)
			pi->caps_dynamic_ac_timing = false;
	}
	if (pi->dynamic_ss)
		FUNC10(rdev, true);
	if (pi->thermal_protection)
		FUNC12(rdev, true);
	FUNC27(rdev);
	FUNC5(rdev);
	FUNC28(rdev);
	ret = FUNC32(rdev);
	if (ret) {
		FUNC0("ci_upload_firmware failed\n");
		return ret;
	}
	ret = FUNC26(rdev);
	if (ret) {
		FUNC0("ci_process_firmware_header failed\n");
		return ret;
	}
	ret = FUNC19(rdev);
	if (ret) {
		FUNC0("ci_initial_switch_from_arb_f0_to_f1 failed\n");
		return ret;
	}
	ret = FUNC18(rdev);
	if (ret) {
		FUNC0("ci_init_smc_table failed\n");
		return ret;
	}
	ret = FUNC17(rdev);
	if (ret) {
		FUNC0("ci_init_arb_table_index failed\n");
		return ret;
	}
	if (pi->caps_dynamic_ac_timing) {
		ret = FUNC23(rdev);
		if (ret) {
			FUNC0("ci_populate_initial_mc_reg_table failed\n");
			return ret;
		}
	}
	ret = FUNC24(rdev);
	if (ret) {
		FUNC0("ci_populate_pm_base failed\n");
		return ret;
	}
	FUNC2(rdev);
	FUNC15(rdev);
	ret = FUNC22(rdev, false);
	if (ret) {
		FUNC0("ci_notify_smc_display_change failed\n");
		return ret;
	}
	FUNC8(rdev, true);
	ret = FUNC13(rdev, true);
	if (ret) {
		FUNC0("ci_enable_ulv failed\n");
		return ret;
	}
	ret = FUNC6(rdev, true);
	if (ret) {
		FUNC0("ci_enable_ds_master_switch failed\n");
		return ret;
	}
	ret = FUNC29(rdev);
	if (ret) {
		FUNC0("ci_start_dpm failed\n");
		return ret;
	}
	ret = FUNC4(rdev, true);
	if (ret) {
		FUNC0("ci_enable_didt failed\n");
		return ret;
	}
	ret = FUNC9(rdev, true);
	if (ret) {
		FUNC0("ci_enable_smc_cac failed\n");
		return ret;
	}
	ret = FUNC7(rdev, true);
	if (ret) {
		FUNC0("ci_enable_power_containment failed\n");
		return ret;
	}

	ret = FUNC25(rdev);
	if (ret) {
		FUNC0("ci_power_control_set_level failed\n");
		return ret;
	}

	FUNC3(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, true);

	ret = FUNC11(rdev, true);
	if (ret) {
		FUNC0("ci_enable_thermal_based_sclk_dpm failed\n");
		return ret;
	}

	FUNC30(rdev);

	FUNC31(rdev, boot_ps);

	return 0;
}