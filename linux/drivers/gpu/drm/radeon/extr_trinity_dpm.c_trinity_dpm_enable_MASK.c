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
struct trinity_power_info {scalar_t__ enable_auto_thermal_throttling; } ;
struct TYPE_3__ {int /*<<< orphan*/  boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 struct trinity_power_info* FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 

int FUNC14(struct radeon_device *rdev)
{
	struct trinity_power_info *pi = FUNC5(rdev);

	FUNC1(rdev);

	if (FUNC3(rdev)) {
		FUNC9(rdev);
		return -EINVAL;
	}

	FUNC6(rdev);
	FUNC0(rdev, 0x00C00033);
	FUNC10(rdev);
	if (pi->enable_auto_thermal_throttling) {
		FUNC8(rdev);
		FUNC4(rdev);
	}
	FUNC7(rdev);
	FUNC11(rdev);
	FUNC13(rdev);
	FUNC2(rdev, false);
	FUNC9(rdev);

	FUNC12(rdev, rdev->pm.dpm.boot_ps);

	return 0;
}