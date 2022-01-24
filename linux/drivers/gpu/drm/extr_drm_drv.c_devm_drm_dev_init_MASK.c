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
struct drm_driver {int /*<<< orphan*/  release; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/  (*) (struct drm_device*),struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,struct drm_driver*,struct device*) ; 

int FUNC4(struct device *parent,
		      struct drm_device *dev,
		      struct drm_driver *driver)
{
	int ret;

	if (FUNC0(!parent || !driver->release))
		return -EINVAL;

	ret = FUNC3(dev, driver, parent);
	if (ret)
		return ret;

	ret = FUNC1(parent, devm_drm_dev_init_release, dev);
	if (ret)
		FUNC2(dev);

	return ret;
}