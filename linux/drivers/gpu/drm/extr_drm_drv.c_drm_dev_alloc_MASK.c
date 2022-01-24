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
struct drm_driver {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct drm_device*,struct drm_driver*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 struct drm_device* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct drm_device *FUNC4(struct drm_driver *driver,
				 struct device *parent)
{
	struct drm_device *dev;
	int ret;

	dev = FUNC3(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return FUNC0(-ENOMEM);

	ret = FUNC1(dev, driver, parent);
	if (ret) {
		FUNC2(dev);
		return FUNC0(ret);
	}

	return dev;
}