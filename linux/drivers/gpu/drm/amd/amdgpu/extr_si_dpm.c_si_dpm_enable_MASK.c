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
struct evergreen_power_info {int dynamic_ac_timing; } ;
struct amdgpu_ps {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 struct evergreen_power_info* FUNC2 (struct amdgpu_device*) ; 
 struct rv7xx_power_info* FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 struct si_power_info* FUNC13 (struct amdgpu_device*) ; 
 int FUNC14 (struct amdgpu_device*) ; 
 int FUNC15 (struct amdgpu_device*) ; 
 int FUNC16 (struct amdgpu_device*) ; 
 int FUNC17 (struct amdgpu_device*) ; 
 int FUNC18 (struct amdgpu_device*) ; 
 int FUNC19 (struct amdgpu_device*) ; 
 int FUNC20 (struct amdgpu_device*) ; 
 int FUNC21 (struct amdgpu_device*) ; 
 int FUNC22 (struct amdgpu_device*,int) ; 
 int FUNC23 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int FUNC24 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int FUNC25 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int FUNC26 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC32 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC36 (struct amdgpu_device*) ; 
 int FUNC37 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC38(struct amdgpu_device *adev)
{
	struct rv7xx_power_info *pi = FUNC3(adev);
	struct evergreen_power_info *eg_pi = FUNC2(adev);
	struct si_power_info *si_pi = FUNC13(adev);
	struct amdgpu_ps *boot_ps = adev->pm.dpm.boot_ps;
	int ret;

	if (FUNC1(adev))
		return -EINVAL;
	if (pi->voltage_control || si_pi->voltage_control_svi2)
		FUNC11(adev, true);
	if (pi->mvdd_control)
		FUNC12(adev);
	if (pi->voltage_control || si_pi->voltage_control_svi2) {
		ret = FUNC4(adev);
		if (ret) {
			FUNC0("si_construct_voltage_tables failed\n");
			return ret;
		}
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC19(adev);
		if (ret)
			eg_pi->dynamic_ac_timing = false;
	}
	if (pi->dynamic_ss)
		FUNC9(adev, true);
	if (pi->thermal_protection)
		FUNC10(adev, true);
	FUNC34(adev);
	FUNC28(adev);
	FUNC31(adev);
	FUNC32(adev);
	FUNC30(adev);
	FUNC7(adev);
	FUNC33(adev);
	ret = FUNC37(adev);
	if (ret) {
		FUNC0("si_upload_firmware failed\n");
		return ret;
	}
	ret = FUNC26(adev);
	if (ret) {
		FUNC0("si_process_firmware_header failed\n");
		return ret;
	}
	ret = FUNC17(adev);
	if (ret) {
		FUNC0("si_initial_switch_from_arb_f0_to_f1 failed\n");
		return ret;
	}
	ret = FUNC16(adev);
	if (ret) {
		FUNC0("si_init_smc_table failed\n");
		return ret;
	}
	ret = FUNC15(adev);
	if (ret) {
		FUNC0("si_init_smc_spll_table failed\n");
		return ret;
	}
	ret = FUNC14(adev);
	if (ret) {
		FUNC0("si_init_arb_table_index failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC23(adev, boot_ps);
		if (ret) {
			FUNC0("si_populate_mc_reg_table failed\n");
			return ret;
		}
	}
	ret = FUNC20(adev);
	if (ret) {
		FUNC0("si_initialize_smc_cac_tables failed\n");
		return ret;
	}
	ret = FUNC18(adev);
	if (ret) {
		FUNC0("si_initialize_hardware_cac_manager failed\n");
		return ret;
	}
	ret = FUNC21(adev);
	if (ret) {
		FUNC0("si_initialize_smc_dte_tables failed\n");
		return ret;
	}
	ret = FUNC24(adev, boot_ps);
	if (ret) {
		FUNC0("si_populate_smc_tdp_limits failed\n");
		return ret;
	}
	ret = FUNC25(adev, boot_ps);
	if (ret) {
		FUNC0("si_populate_smc_tdp_limits_2 failed\n");
		return ret;
	}
	FUNC29(adev);
	FUNC27(adev);
	FUNC5(adev);
	ret = FUNC22(adev, false);
	if (ret) {
		FUNC0("si_notify_smc_display_change failed\n");
		return ret;
	}
	FUNC8(adev, true);
	FUNC35(adev);

	FUNC6(adev, AMDGPU_DPM_AUTO_THROTTLE_SRC_THERMAL, true);
	FUNC36(adev);

	return 0;
}