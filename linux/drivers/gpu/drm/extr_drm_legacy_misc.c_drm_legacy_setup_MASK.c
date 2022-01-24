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
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* firstopen ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*) ; 

int FUNC4(struct drm_device * dev)
{
	int ret;

	if (dev->driver->firstopen &&
	    FUNC1(dev, DRIVER_LEGACY)) {
		ret = dev->driver->firstopen(dev);
		if (ret != 0)
			return ret;
	}

	ret = FUNC2(dev);
	if (ret < 0)
		return ret;


	FUNC0("\n");
	return 0;
}