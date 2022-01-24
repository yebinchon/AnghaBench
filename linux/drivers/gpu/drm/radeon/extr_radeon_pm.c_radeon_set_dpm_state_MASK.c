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
struct TYPE_3__ {int /*<<< orphan*/  user_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; TYPE_1__ dpm; } ;
struct radeon_device {int flags; TYPE_2__ pm; } ;
struct drm_device {scalar_t__ switch_power_state; struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ DRM_SWITCH_POWER_ON ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  POWER_STATE_TYPE_BALANCED ; 
 int /*<<< orphan*/  POWER_STATE_TYPE_BATTERY ; 
 int /*<<< orphan*/  POWER_STATE_TYPE_PERFORMANCE ; 
 int RADEON_IS_PX ; 
 struct drm_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf,
				    size_t count)
{
	struct drm_device *ddev = FUNC0(dev);
	struct radeon_device *rdev = ddev->dev_private;

	FUNC1(&rdev->pm.mutex);
	if (FUNC5("battery", buf, FUNC4("battery")) == 0)
		rdev->pm.dpm.user_state = POWER_STATE_TYPE_BATTERY;
	else if (FUNC5("balanced", buf, FUNC4("balanced")) == 0)
		rdev->pm.dpm.user_state = POWER_STATE_TYPE_BALANCED;
	else if (FUNC5("performance", buf, FUNC4("performance")) == 0)
		rdev->pm.dpm.user_state = POWER_STATE_TYPE_PERFORMANCE;
	else {
		FUNC2(&rdev->pm.mutex);
		count = -EINVAL;
		goto fail;
	}
	FUNC2(&rdev->pm.mutex);

	/* Can't set dpm state when the card is off */
	if (!(rdev->flags & RADEON_IS_PX) ||
	    (ddev->switch_power_state == DRM_SWITCH_POWER_ON))
		FUNC3(rdev);

fail:
	return count;
}