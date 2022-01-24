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
struct evergreen_power_info {scalar_t__ pcie_performance_request; scalar_t__ dynamic_ac_timing; struct radeon_ps current_rps; struct radeon_ps requested_rps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct evergreen_power_info* FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*,struct radeon_ps*,int) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ps*,int) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC15 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC18 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC21 (struct radeon_device*) ; 

int FUNC22(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC1(rdev);
	struct radeon_ps *new_ps = &eg_pi->requested_rps;
	struct radeon_ps *old_ps = &eg_pi->current_rps;
	int ret;

	ret = FUNC4(rdev);
	if (ret) {
		FUNC0("si_disable_ulv failed\n");
		return ret;
	}
	ret = FUNC12(rdev);
	if (ret) {
		FUNC0("si_restrict_performance_levels_before_switch failed\n");
		return ret;
	}
	if (eg_pi->pcie_performance_request)
		FUNC11(rdev, new_ps, old_ps);
	FUNC3(rdev, new_ps, old_ps);
	ret = FUNC5(rdev, new_ps, false);
	if (ret) {
		FUNC0("si_enable_power_containment failed\n");
		return ret;
	}
	ret = FUNC6(rdev, new_ps, false);
	if (ret) {
		FUNC0("si_enable_smc_cac failed\n");
		return ret;
	}
	ret = FUNC7(rdev);
	if (ret) {
		FUNC0("si_halt_smc failed\n");
		return ret;
	}
	ret = FUNC20(rdev, new_ps);
	if (ret) {
		FUNC0("si_upload_sw_state failed\n");
		return ret;
	}
	ret = FUNC19(rdev);
	if (ret) {
		FUNC0("si_upload_smc_data failed\n");
		return ret;
	}
	ret = FUNC21(rdev);
	if (ret) {
		FUNC0("si_upload_ulv_state failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC18(rdev, new_ps);
		if (ret) {
			FUNC0("si_upload_mc_reg_table failed\n");
			return ret;
		}
	}
	ret = FUNC10(rdev, new_ps);
	if (ret) {
		FUNC0("si_program_memory_timing_parameters failed\n");
		return ret;
	}
	FUNC14(rdev, new_ps, old_ps);

	ret = FUNC13(rdev);
	if (ret) {
		FUNC0("si_resume_smc failed\n");
		return ret;
	}
	ret = FUNC16(rdev);
	if (ret) {
		FUNC0("si_set_sw_state failed\n");
		return ret;
	}
	FUNC2(rdev, new_ps, old_ps);
	FUNC17(rdev, new_ps, old_ps);
	if (eg_pi->pcie_performance_request)
		FUNC8(rdev, new_ps, old_ps);
	ret = FUNC15(rdev, new_ps);
	if (ret) {
		FUNC0("si_set_power_state_conditionally_enable_ulv failed\n");
		return ret;
	}
	ret = FUNC6(rdev, new_ps, true);
	if (ret) {
		FUNC0("si_enable_smc_cac failed\n");
		return ret;
	}
	ret = FUNC5(rdev, new_ps, true);
	if (ret) {
		FUNC0("si_enable_power_containment failed\n");
		return ret;
	}

	ret = FUNC9(rdev);
	if (ret) {
		FUNC0("si_power_control_set_level failed\n");
		return ret;
	}

	return 0;
}