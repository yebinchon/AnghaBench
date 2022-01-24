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
struct sumo_ps {int num_levels; } ;
struct radeon_ps {int dummy; } ;
struct sumo_power_info {scalar_t__ enable_boost; struct radeon_ps current_rps; } ;
struct TYPE_3__ {int forced_level; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
typedef  enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;

/* Variables and functions */
 int RADEON_DPM_FORCED_LEVEL_HIGH ; 
 int RADEON_DPM_FORCED_LEVEL_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct radeon_ps*,int) ; 
 struct sumo_power_info* FUNC1 (struct radeon_device*) ; 
 struct sumo_ps* FUNC2 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

int FUNC7(struct radeon_device *rdev,
				     enum radeon_dpm_forced_level level)
{
	struct sumo_power_info *pi = FUNC1(rdev);
	struct radeon_ps *rps = &pi->current_rps;
	struct sumo_ps *ps = FUNC2(rps);
	int i;

	if (ps->num_levels <= 1)
		return 0;

	if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
		if (pi->enable_boost)
			FUNC0(rdev, rps, false);
		FUNC3(rdev, ps->num_levels - 1, true);
		FUNC4(rdev, ps->num_levels - 1);
		FUNC6(rdev);
		for (i = 0; i < ps->num_levels - 1; i++) {
			FUNC3(rdev, i, false);
		}
		FUNC5(rdev, false);
		FUNC6(rdev);
		FUNC5(rdev, false);
	} else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
		if (pi->enable_boost)
			FUNC0(rdev, rps, false);
		FUNC3(rdev, 0, true);
		FUNC4(rdev, 0);
		FUNC6(rdev);
		for (i = 1; i < ps->num_levels; i++) {
			FUNC3(rdev, i, false);
		}
		FUNC5(rdev, false);
		FUNC6(rdev);
		FUNC5(rdev, false);
	} else {
		for (i = 0; i < ps->num_levels; i++) {
			FUNC3(rdev, i, true);
		}
		if (pi->enable_boost)
			FUNC0(rdev, rps, true);
	}

	rdev->pm.dpm.forced_level = level;

	return 0;
}