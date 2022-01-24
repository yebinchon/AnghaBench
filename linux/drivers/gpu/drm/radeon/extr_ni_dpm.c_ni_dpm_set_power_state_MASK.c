#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {scalar_t__ dynamic_ac_timing; scalar_t__ smu_uvd_hs; struct radeon_ps current_rps; struct radeon_ps requested_rps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ps*) ; 
 struct evergreen_power_info* FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*,struct radeon_ps*,int) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ps*,int) ; 
 int FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC10 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC11 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 

int FUNC15(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC2(rdev);
	struct radeon_ps *new_ps = &eg_pi->requested_rps;
	struct radeon_ps *old_ps = &eg_pi->current_rps;
	int ret;

	ret = FUNC7(rdev);
	if (ret) {
		FUNC0("ni_restrict_performance_levels_before_switch failed\n");
		return ret;
	}
	FUNC9(rdev, new_ps, old_ps);
	ret = FUNC3(rdev, new_ps, false);
	if (ret) {
		FUNC0("ni_enable_power_containment failed\n");
		return ret;
	}
	ret = FUNC4(rdev, new_ps, false);
	if (ret) {
		FUNC0("ni_enable_smc_cac failed\n");
		return ret;
	}
	ret = FUNC12(rdev);
	if (ret) {
		FUNC0("rv770_halt_smc failed\n");
		return ret;
	}
	if (eg_pi->smu_uvd_hs)
		FUNC1(rdev, new_ps);
	ret = FUNC11(rdev, new_ps);
	if (ret) {
		FUNC0("ni_upload_sw_state failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC10(rdev, new_ps);
		if (ret) {
			FUNC0("ni_upload_mc_reg_table failed\n");
			return ret;
		}
	}
	ret = FUNC6(rdev, new_ps);
	if (ret) {
		FUNC0("ni_program_memory_timing_parameters failed\n");
		return ret;
	}
	ret = FUNC13(rdev);
	if (ret) {
		FUNC0("rv770_resume_smc failed\n");
		return ret;
	}
	ret = FUNC14(rdev);
	if (ret) {
		FUNC0("rv770_set_sw_state failed\n");
		return ret;
	}
	FUNC8(rdev, new_ps, old_ps);
	ret = FUNC4(rdev, new_ps, true);
	if (ret) {
		FUNC0("ni_enable_smc_cac failed\n");
		return ret;
	}
	ret = FUNC3(rdev, new_ps, true);
	if (ret) {
		FUNC0("ni_enable_power_containment failed\n");
		return ret;
	}

	/* update tdp */
	ret = FUNC5(rdev);
	if (ret) {
		FUNC0("ni_power_control_set_level failed\n");
		return ret;
	}

	return 0;
}