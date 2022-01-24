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
struct drm_device {int registered; scalar_t__ agp; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unload ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  DRM_MINOR_PRIMARY ; 
 int /*<<< orphan*/  DRM_MINOR_RENDER ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 

void FUNC9(struct drm_device *dev)
{
	if (FUNC1(dev, DRIVER_LEGACY))
		FUNC2(dev);

	dev->registered = false;

	FUNC0(dev);

	if (FUNC1(dev, DRIVER_MODESET))
		FUNC5(dev);

	if (dev->driver->unload)
		dev->driver->unload(dev);

	if (dev->agp)
		FUNC6(dev);

	FUNC3(dev);

	FUNC7(dev);
	FUNC4(dev, DRM_MINOR_PRIMARY);
	FUNC4(dev, DRM_MINOR_RENDER);
}