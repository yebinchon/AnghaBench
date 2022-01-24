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
struct exynos_drm_driver_info {int flags; TYPE_1__* driver; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (struct exynos_drm_driver_info*) ; 
 int DRM_VIRTUAL_DEVICE ; 
 struct exynos_drm_driver_info* exynos_drm_drivers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(void)
{
	int i;

	for (i = FUNC0(exynos_drm_drivers) - 1; i >= 0; --i) {
		struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];
		struct device *dev;

		if (!info->driver || !(info->flags & DRM_VIRTUAL_DEVICE))
			continue;

		while ((dev = FUNC2(NULL,
						&info->driver->driver))) {
			FUNC3(dev);
			FUNC1(FUNC4(dev));
		}
	}
}