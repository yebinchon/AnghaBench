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
struct evergreen_power_info {scalar_t__ pcie_performance_request; scalar_t__ dynamic_ac_timing; scalar_t__ smu_uvd_hs; struct radeon_ps current_rps; struct radeon_ps requested_rps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC9 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC10 (struct radeon_device*,struct radeon_ps*) ; 
 struct evergreen_power_info* FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 

int FUNC18(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC11(rdev);
	struct radeon_ps *new_ps = &eg_pi->requested_rps;
	struct radeon_ps *old_ps = &eg_pi->current_rps;
	int ret;

	ret = FUNC1(rdev);
	FUNC4(rdev);
	ret = FUNC13(rdev);
	if (ret) {
		FUNC0("rv770_restrict_performance_levels_before_switch failed\n");
		return ret;
	}
	if (eg_pi->pcie_performance_request)
		FUNC7(rdev, new_ps, old_ps);

	FUNC17(rdev, new_ps, old_ps);
	ret = FUNC12(rdev);
	if (ret) {
		FUNC0("rv770_halt_smc failed\n");
		return ret;
	}
	FUNC3(rdev, new_ps);
	if (eg_pi->smu_uvd_hs)
		FUNC2(rdev, new_ps);
	ret = FUNC10(rdev, new_ps);
	if (ret) {
		FUNC0("cypress_upload_sw_state failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC9(rdev, new_ps);
		if (ret) {
			FUNC0("cypress_upload_mc_reg_table failed\n");
			return ret;
		}
	}

	FUNC8(rdev, new_ps);

	ret = FUNC14(rdev);
	if (ret) {
		FUNC0("rv770_resume_smc failed\n");
		return ret;
	}
	ret = FUNC15(rdev);
	if (ret) {
		FUNC0("rv770_set_sw_state failed\n");
		return ret;
	}
	FUNC16(rdev, new_ps, old_ps);

	if (eg_pi->pcie_performance_request)
		FUNC6(rdev, new_ps, old_ps);

	ret = FUNC5(rdev, new_ps);
	if (ret) {
		FUNC0("btc_set_power_state_conditionally_enable_ulv failed\n");
		return ret;
	}

	return 0;
}