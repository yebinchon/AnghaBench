#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num_power_states; int /*<<< orphan*/  power_state; int /*<<< orphan*/  mutex; } ;
struct radeon_device {TYPE_1__ pm; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_power_dpm_force_performance_level ; 
 int /*<<< orphan*/  dev_attr_power_dpm_state ; 
 int /*<<< orphan*/  dev_attr_power_method ; 
 int /*<<< orphan*/  dev_attr_power_profile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev)
{
	if (rdev->pm.num_power_states > 1) {
		FUNC2(&rdev->pm.mutex);
		FUNC4(rdev);
		FUNC3(&rdev->pm.mutex);

		FUNC0(rdev->dev, &dev_attr_power_dpm_state);
		FUNC0(rdev->dev, &dev_attr_power_dpm_force_performance_level);
		/* XXX backwards compat */
		FUNC0(rdev->dev, &dev_attr_power_profile);
		FUNC0(rdev->dev, &dev_attr_power_method);
	}
	FUNC5(rdev);

	FUNC6(rdev);
	FUNC1(rdev->pm.power_state);
}