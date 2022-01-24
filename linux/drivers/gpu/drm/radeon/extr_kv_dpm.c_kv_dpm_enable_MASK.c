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
struct TYPE_3__ {int /*<<< orphan*/  boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct kv_power_info {scalar_t__ enable_auto_thermal_throttling; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*,int) ; 
 int FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*,int) ; 
 int FUNC6 (struct radeon_device*,int) ; 
 struct kv_power_info* FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct radeon_device*) ; 

int FUNC26(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC7(rdev);
	int ret;

	ret = FUNC15(rdev);
	if (ret) {
		FUNC0("kv_process_firmware_header failed\n");
		return ret;
	}
	FUNC8(rdev);
	FUNC9(rdev);
	ret = FUNC16(rdev);
	if (ret) {
		FUNC0("kv_program_bootup_state failed\n");
		return ret;
	}
	FUNC1(rdev);
	ret = FUNC25(rdev);
	if (ret) {
		FUNC0("kv_upload_dpm_settings failed\n");
		return ret;
	}
	ret = FUNC13(rdev);
	if (ret) {
		FUNC0("kv_populate_uvd_table failed\n");
		return ret;
	}
	ret = FUNC14(rdev);
	if (ret) {
		FUNC0("kv_populate_vce_table failed\n");
		return ret;
	}
	ret = FUNC12(rdev);
	if (ret) {
		FUNC0("kv_populate_samu_table failed\n");
		return ret;
	}
	ret = FUNC11(rdev);
	if (ret) {
		FUNC0("kv_populate_acp_table failed\n");
		return ret;
	}
	FUNC17(rdev);
#if 0
	kv_initialize_hardware_cac_manager(rdev);
#endif
	FUNC22(rdev);
	if (pi->enable_auto_thermal_throttling) {
		ret = FUNC2(rdev);
		if (ret) {
			FUNC0("kv_enable_auto_thermal_throttling failed\n");
			return ret;
		}
	}
	ret = FUNC4(rdev);
	if (ret) {
		FUNC0("kv_enable_dpm_voltage_scaling failed\n");
		return ret;
	}
	ret = FUNC20(rdev);
	if (ret) {
		FUNC0("kv_set_dpm_interval failed\n");
		return ret;
	}
	ret = FUNC19(rdev);
	if (ret) {
		FUNC0("kv_set_dpm_boot_state failed\n");
		return ret;
	}
	ret = FUNC6(rdev, true);
	if (ret) {
		FUNC0("kv_enable_ulv failed\n");
		return ret;
	}
	FUNC23(rdev);
	ret = FUNC3(rdev, true);
	if (ret) {
		FUNC0("kv_enable_didt failed\n");
		return ret;
	}
	ret = FUNC5(rdev, true);
	if (ret) {
		FUNC0("kv_enable_smc_cac failed\n");
		return ret;
	}

	FUNC18(rdev);

	ret = FUNC21(rdev, false);
	if (ret) {
		FUNC0("kv_smc_bapm_enable failed\n");
		return ret;
	}

	FUNC24(rdev, rdev->pm.dpm.boot_ps);

	return ret;
}