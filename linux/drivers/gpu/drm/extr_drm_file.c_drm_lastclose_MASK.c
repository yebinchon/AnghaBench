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
struct TYPE_2__ {int /*<<< orphan*/  (* lastclose ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

void FUNC5(struct drm_device * dev)
{
	FUNC0("\n");

	if (dev->driver->lastclose)
		dev->driver->lastclose(dev);
	FUNC0("driver lastclose completed\n");

	if (FUNC2(dev, DRIVER_LEGACY))
		FUNC3(dev);

	FUNC1(dev);
}