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
struct sumo_power_info {scalar_t__ enable_dpm; scalar_t__ enable_boost; struct radeon_ps current_rps; struct radeon_ps requested_rps; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct radeon_ps*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ps*) ; 
 struct sumo_power_info* FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 

int FUNC17(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC3(rdev);
	struct radeon_ps *new_ps = &pi->requested_rps;
	struct radeon_ps *old_ps = &pi->current_rps;

	if (pi->enable_dpm)
		FUNC15(rdev, new_ps, old_ps);
	if (pi->enable_boost) {
		FUNC0(rdev, new_ps, false);
		FUNC4(rdev, new_ps);
	}
	if (pi->enable_dpm) {
		FUNC6(rdev, new_ps, old_ps);
		FUNC1(rdev);
		FUNC11(rdev);
		FUNC13(rdev);
		FUNC16(rdev);
		FUNC9(rdev, new_ps, old_ps);
		FUNC10(rdev, new_ps);
		FUNC8(rdev, new_ps);
		FUNC7(rdev, new_ps);
		FUNC2(rdev, new_ps);
		FUNC12(rdev);
		FUNC13(rdev);
		FUNC12(rdev);
		FUNC5(rdev, new_ps, old_ps);
	}
	if (pi->enable_boost)
		FUNC0(rdev, new_ps, true);
	if (pi->enable_dpm)
		FUNC14(rdev, new_ps, old_ps);

	return 0;
}