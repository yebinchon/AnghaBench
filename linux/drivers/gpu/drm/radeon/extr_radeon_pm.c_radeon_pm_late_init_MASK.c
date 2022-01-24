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
struct TYPE_2__ {scalar_t__ pm_method; int dpm_enabled; int sysfs_initialized; int num_power_states; int /*<<< orphan*/  mutex; } ;
struct radeon_device {TYPE_1__ pm; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PM_METHOD_DPM ; 
 int /*<<< orphan*/  dev_attr_power_dpm_force_performance_level ; 
 int /*<<< orphan*/  dev_attr_power_dpm_state ; 
 int /*<<< orphan*/  dev_attr_power_method ; 
 int /*<<< orphan*/  dev_attr_power_profile ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 

int FUNC6(struct radeon_device *rdev)
{
	int ret = 0;

	if (rdev->pm.pm_method == PM_METHOD_DPM) {
		if (rdev->pm.dpm_enabled) {
			if (!rdev->pm.sysfs_initialized) {
				ret = FUNC1(rdev->dev, &dev_attr_power_dpm_state);
				if (ret)
					FUNC0("failed to create device file for dpm state\n");
				ret = FUNC1(rdev->dev, &dev_attr_power_dpm_force_performance_level);
				if (ret)
					FUNC0("failed to create device file for dpm state\n");
				/* XXX: these are noops for dpm but are here for backwards compat */
				ret = FUNC1(rdev->dev, &dev_attr_power_profile);
				if (ret)
					FUNC0("failed to create device file for power profile\n");
				ret = FUNC1(rdev->dev, &dev_attr_power_method);
				if (ret)
					FUNC0("failed to create device file for power method\n");
				rdev->pm.sysfs_initialized = true;
			}

			FUNC2(&rdev->pm.mutex);
			ret = FUNC4(rdev);
			FUNC3(&rdev->pm.mutex);
			if (ret) {
				rdev->pm.dpm_enabled = false;
				FUNC0("radeon_pm_late_init failed, disabling dpm\n");
			} else {
				/* set the dpm state for PX since there won't be
				 * a modeset to call this.
				 */
				FUNC5(rdev);
			}
		}
	} else {
		if ((rdev->pm.num_power_states > 1) &&
		    (!rdev->pm.sysfs_initialized)) {
			/* where's the best place to put these? */
			ret = FUNC1(rdev->dev, &dev_attr_power_profile);
			if (ret)
				FUNC0("failed to create device file for power profile\n");
			ret = FUNC1(rdev->dev, &dev_attr_power_method);
			if (ret)
				FUNC0("failed to create device file for power method\n");
			if (!ret)
				rdev->pm.sysfs_initialized = true;
		}
	}
	return ret;
}