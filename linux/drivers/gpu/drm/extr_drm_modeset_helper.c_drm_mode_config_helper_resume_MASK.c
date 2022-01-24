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
struct TYPE_2__ {int /*<<< orphan*/ * suspend_state; } ;
struct drm_device {int /*<<< orphan*/  fb_helper; TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

int FUNC5(struct drm_device *dev)
{
	int ret;

	if (!dev)
		return 0;

	if (FUNC1(!dev->mode_config.suspend_state))
		return -EINVAL;

	ret = FUNC2(dev, dev->mode_config.suspend_state);
	if (ret)
		FUNC0("Failed to resume (%d)\n", ret);
	dev->mode_config.suspend_state = NULL;

	FUNC3(dev->fb_helper, 0);
	FUNC4(dev);

	return ret;
}