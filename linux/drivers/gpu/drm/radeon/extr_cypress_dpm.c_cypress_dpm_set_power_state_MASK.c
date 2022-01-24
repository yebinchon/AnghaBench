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
struct TYPE_3__ {struct radeon_ps* current_ps; struct radeon_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct evergreen_power_info {scalar_t__ pcie_performance_request; scalar_t__ dynamic_ac_timing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC5 (struct radeon_device*,struct radeon_ps*) ; 
 struct evergreen_power_info* FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 

int FUNC13(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC6(rdev);
	struct radeon_ps *new_ps = rdev->pm.dpm.requested_ps;
	struct radeon_ps *old_ps = rdev->pm.dpm.current_ps;
	int ret;

	ret = FUNC8(rdev);
	if (ret) {
		FUNC0("rv770_restrict_performance_levels_before_switch failed\n");
		return ret;
	}
	if (eg_pi->pcie_performance_request)
		FUNC2(rdev, new_ps, old_ps);

	FUNC12(rdev, new_ps, old_ps);
	ret = FUNC7(rdev);
	if (ret) {
		FUNC0("rv770_halt_smc failed\n");
		return ret;
	}
	ret = FUNC5(rdev, new_ps);
	if (ret) {
		FUNC0("cypress_upload_sw_state failed\n");
		return ret;
	}
	if (eg_pi->dynamic_ac_timing) {
		ret = FUNC4(rdev, new_ps);
		if (ret) {
			FUNC0("cypress_upload_mc_reg_table failed\n");
			return ret;
		}
	}

	FUNC3(rdev, new_ps);

	ret = FUNC9(rdev);
	if (ret) {
		FUNC0("rv770_resume_smc failed\n");
		return ret;
	}
	ret = FUNC10(rdev);
	if (ret) {
		FUNC0("rv770_set_sw_state failed\n");
		return ret;
	}
	FUNC11(rdev, new_ps, old_ps);

	if (eg_pi->pcie_performance_request)
		FUNC1(rdev, new_ps, old_ps);

	return 0;
}