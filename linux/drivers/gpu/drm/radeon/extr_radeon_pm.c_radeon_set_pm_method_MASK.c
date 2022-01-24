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
struct TYPE_2__ {scalar_t__ pm_method; int /*<<< orphan*/  dynpm_idle_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dynpm_planned_action; int /*<<< orphan*/  dynpm_state; } ;
struct radeon_device {int flags; TYPE_1__ pm; } ;
struct drm_device {scalar_t__ switch_power_state; struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ DRM_SWITCH_POWER_ON ; 
 int /*<<< orphan*/  DYNPM_ACTION_DEFAULT ; 
 int /*<<< orphan*/  DYNPM_ACTION_NONE ; 
 int /*<<< orphan*/  DYNPM_STATE_DISABLED ; 
 int /*<<< orphan*/  DYNPM_STATE_PAUSED ; 
 size_t EINVAL ; 
 scalar_t__ PM_METHOD_DPM ; 
 scalar_t__ PM_METHOD_DYNPM ; 
 scalar_t__ PM_METHOD_PROFILE ; 
 int RADEON_IS_PX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf,
				    size_t count)
{
	struct drm_device *ddev = FUNC1(dev);
	struct radeon_device *rdev = ddev->dev_private;

	/* Can't set method when the card is off */
	if  ((rdev->flags & RADEON_IS_PX) &&
	     (ddev->switch_power_state != DRM_SWITCH_POWER_ON)) {
		count = -EINVAL;
		goto fail;
	}

	/* we don't support the legacy modes with dpm */
	if (rdev->pm.pm_method == PM_METHOD_DPM) {
		count = -EINVAL;
		goto fail;
	}

	if (FUNC6("dynpm", buf, FUNC5("dynpm")) == 0) {
		FUNC2(&rdev->pm.mutex);
		rdev->pm.pm_method = PM_METHOD_DYNPM;
		rdev->pm.dynpm_state = DYNPM_STATE_PAUSED;
		rdev->pm.dynpm_planned_action = DYNPM_ACTION_DEFAULT;
		FUNC3(&rdev->pm.mutex);
	} else if (FUNC6("profile", buf, FUNC5("profile")) == 0) {
		FUNC2(&rdev->pm.mutex);
		/* disable dynpm */
		rdev->pm.dynpm_state = DYNPM_STATE_DISABLED;
		rdev->pm.dynpm_planned_action = DYNPM_ACTION_NONE;
		rdev->pm.pm_method = PM_METHOD_PROFILE;
		FUNC3(&rdev->pm.mutex);
		FUNC0(&rdev->pm.dynpm_idle_work);
	} else {
		count = -EINVAL;
		goto fail;
	}
	FUNC4(rdev);
fail:
	return count;
}