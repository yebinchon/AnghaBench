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
struct rv6xx_power_info {int restricted_levels; } ;
struct TYPE_3__ {int forced_level; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
typedef  enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;

/* Variables and functions */
 int /*<<< orphan*/  R600_POWER_LEVEL_HIGH ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_LOW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_MEDIUM ; 
 int RADEON_DPM_FORCED_LEVEL_HIGH ; 
 int RADEON_DPM_FORCED_LEVEL_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 struct rv6xx_power_info* FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 

int FUNC9(struct radeon_device *rdev,
				      enum radeon_dpm_forced_level level)
{
	struct rv6xx_power_info *pi = FUNC6(rdev);

	if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
		pi->restricted_levels = 3;
	} else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
		pi->restricted_levels = 2;
	} else {
		pi->restricted_levels = 0;
	}

	FUNC3(rdev);
	FUNC0(rdev, R600_POWER_LEVEL_LOW, true);
	FUNC1(rdev, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF);
	FUNC2(rdev, R600_POWER_LEVEL_LOW);
	FUNC0(rdev, R600_POWER_LEVEL_HIGH, false);
	FUNC0(rdev, R600_POWER_LEVEL_MEDIUM, false);
	FUNC5(rdev);
	FUNC4(rdev);
	if (pi->restricted_levels == 3)
		FUNC0(rdev, R600_POWER_LEVEL_LOW, false);
	FUNC8(rdev);
	FUNC7(rdev);

	rdev->pm.dpm.forced_level = level;

	return 0;
}