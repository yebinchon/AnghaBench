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
struct TYPE_4__ {struct radeon_ps* current_ps; struct radeon_ps* requested_ps; } ;
struct TYPE_3__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct igp_power_info {scalar_t__ voltage_control; int /*<<< orphan*/  max_voltage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct igp_power_info* FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ; 

int FUNC10(struct radeon_device *rdev)
{
	struct igp_power_info *pi = FUNC4(rdev);
	struct radeon_ps *new_ps = rdev->pm.dpm.requested_ps;
	struct radeon_ps *old_ps = rdev->pm.dpm.current_ps;
	int ret;

	FUNC5(rdev);

	FUNC9(rdev, new_ps, old_ps);

	if (pi->voltage_control) {
		FUNC3(rdev, pi->max_voltage);
		FUNC0(5);
	}

	ret = FUNC6(rdev, new_ps, old_ps);
	if (ret)
		return ret;
	FUNC7(rdev, new_ps, old_ps);

	FUNC1(rdev, new_ps, old_ps);

	if (pi->voltage_control)
		FUNC2(rdev, new_ps);

	FUNC8(rdev, new_ps, old_ps);

	return 0;
}