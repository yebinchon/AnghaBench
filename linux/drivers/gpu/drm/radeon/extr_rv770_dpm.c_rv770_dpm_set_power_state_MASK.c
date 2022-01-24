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
struct rv7xx_power_info {scalar_t__ dcodt; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_4__ {struct radeon_ps* current_ps; struct radeon_ps* requested_ps; } ;
struct TYPE_3__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_1__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ps*) ; 
 struct rv7xx_power_info* FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int FUNC11 (struct radeon_device*,struct radeon_ps*) ; 

int FUNC12(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC2(rdev);
	struct radeon_ps *new_ps = rdev->pm.dpm.requested_ps;
	struct radeon_ps *old_ps = rdev->pm.dpm.current_ps;
	int ret;

	ret = FUNC6(rdev);
	if (ret) {
		FUNC0("rv770_restrict_performance_levels_before_switch failed\n");
		return ret;
	}
	FUNC10(rdev, new_ps, old_ps);
	ret = FUNC3(rdev);
	if (ret) {
		FUNC0("rv770_halt_smc failed\n");
		return ret;
	}
	ret = FUNC11(rdev, new_ps);
	if (ret) {
		FUNC0("rv770_upload_sw_state failed\n");
		return ret;
	}
	FUNC1(rdev, new_ps);
	if (pi->dcodt)
		FUNC5(rdev, new_ps, old_ps);
	ret = FUNC7(rdev);
	if (ret) {
		FUNC0("rv770_resume_smc failed\n");
		return ret;
	}
	ret = FUNC8(rdev);
	if (ret) {
		FUNC0("rv770_set_sw_state failed\n");
		return ret;
	}
	if (pi->dcodt)
		FUNC4(rdev, new_ps, old_ps);
	FUNC9(rdev, new_ps, old_ps);

	return 0;
}