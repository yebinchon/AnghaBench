#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  work; } ;
struct TYPE_7__ {int /*<<< orphan*/  boot_ps; int /*<<< orphan*/  requested_ps; int /*<<< orphan*/  current_ps; TYPE_2__ thermal; int /*<<< orphan*/  forced_level; void* user_state; void* state; } ;
struct TYPE_8__ {int dpm_enabled; scalar_t__ default_mclk; scalar_t__ default_sclk; scalar_t__ default_vddci; scalar_t__ default_vddc; int /*<<< orphan*/  mutex; TYPE_3__ dpm; int /*<<< orphan*/  int_thermal_type; scalar_t__ current_mclk; scalar_t__ current_sclk; } ;
struct TYPE_5__ {scalar_t__ default_mclk; scalar_t__ default_sclk; } ;
struct radeon_device {scalar_t__ family; TYPE_4__ pm; scalar_t__ mc_fw; scalar_t__ is_atom_bios; scalar_t__ bios; TYPE_1__ clock; } ;

/* Variables and functions */
 scalar_t__ CHIP_BARTS ; 
 scalar_t__ CHIP_CAYMAN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* POWER_STATE_TYPE_BALANCED ; 
 int /*<<< orphan*/  RADEON_DPM_FORCED_LEVEL_AUTO ; 
 int /*<<< orphan*/  SET_VOLTAGE_TYPE_ASIC_VDDC ; 
 int /*<<< orphan*/  SET_VOLTAGE_TYPE_ASIC_VDDCI ; 
 int /*<<< orphan*/  THERMAL_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 scalar_t__ FUNC7 (struct radeon_device*) ; 
 int radeon_dpm ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  radeon_dpm_thermal_work_handler ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct radeon_device *rdev)
{
	int ret;

	/* default to balanced state */
	rdev->pm.dpm.state = POWER_STATE_TYPE_BALANCED;
	rdev->pm.dpm.user_state = POWER_STATE_TYPE_BALANCED;
	rdev->pm.dpm.forced_level = RADEON_DPM_FORCED_LEVEL_AUTO;
	rdev->pm.default_sclk = rdev->clock.default_sclk;
	rdev->pm.default_mclk = rdev->clock.default_mclk;
	rdev->pm.current_sclk = rdev->clock.default_sclk;
	rdev->pm.current_mclk = rdev->clock.default_mclk;
	rdev->pm.int_thermal_type = THERMAL_TYPE_NONE;

	if (rdev->bios && rdev->is_atom_bios)
		FUNC6(rdev);
	else
		return -EINVAL;

	/* set up the internal thermal sensor if applicable */
	ret = FUNC12(rdev);
	if (ret)
		return ret;

	FUNC2(&rdev->pm.dpm.thermal.work, radeon_dpm_thermal_work_handler);
	FUNC3(&rdev->pm.mutex);
	FUNC9(rdev);
	rdev->pm.dpm.current_ps = rdev->pm.dpm.requested_ps = rdev->pm.dpm.boot_ps;
	if (radeon_dpm == 1)
		FUNC10(rdev);
	FUNC11(rdev);
	ret = FUNC8(rdev);
	FUNC4(&rdev->pm.mutex);
	if (ret)
		goto dpm_failed;
	rdev->pm.dpm_enabled = true;

	if (FUNC7(rdev)) {
		FUNC0("Failed to register debugfs file for dpm!\n");
	}

	FUNC1("radeon: dpm initialized\n");

	return 0;

dpm_failed:
	rdev->pm.dpm_enabled = false;
	if ((rdev->family >= CHIP_BARTS) &&
	    (rdev->family <= CHIP_CAYMAN) &&
	    rdev->mc_fw) {
		if (rdev->pm.default_vddc)
			FUNC5(rdev, rdev->pm.default_vddc,
						SET_VOLTAGE_TYPE_ASIC_VDDC);
		if (rdev->pm.default_vddci)
			FUNC5(rdev, rdev->pm.default_vddci,
						SET_VOLTAGE_TYPE_ASIC_VDDCI);
		if (rdev->pm.default_sclk)
			FUNC13(rdev, rdev->pm.default_sclk);
		if (rdev->pm.default_mclk)
			FUNC14(rdev, rdev->pm.default_mclk);
	}
	FUNC0("radeon: dpm initialization failed\n");
	return ret;
}