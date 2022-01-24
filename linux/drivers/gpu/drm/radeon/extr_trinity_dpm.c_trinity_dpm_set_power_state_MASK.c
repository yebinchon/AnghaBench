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
struct trinity_power_info {scalar_t__ enable_bapm; scalar_t__ enable_dpm; struct radeon_ps current_rps; struct radeon_ps requested_rps; } ;
struct TYPE_3__ {int /*<<< orphan*/  ac_power; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 struct trinity_power_info* FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 

int FUNC13(struct radeon_device *rdev)
{
	struct trinity_power_info *pi = FUNC4(rdev);
	struct radeon_ps *new_ps = &pi->requested_rps;
	struct radeon_ps *old_ps = &pi->current_rps;

	FUNC0(rdev);
	if (pi->enable_dpm) {
		if (pi->enable_bapm)
			FUNC1(rdev, rdev->pm.dpm.ac_power);
		FUNC8(rdev, new_ps, old_ps);
		FUNC2(rdev);
		FUNC3(rdev);
		FUNC12(rdev);
		FUNC10(rdev, new_ps);
		FUNC5(rdev, new_ps, old_ps);
		FUNC3(rdev);
		FUNC11(rdev);
		FUNC7(rdev, new_ps, old_ps);
		FUNC9(rdev, new_ps, old_ps);
	}
	FUNC6(rdev);

	return 0;
}