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
struct component_match {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (struct exynos_drm_driver_info*) ; 
 int DRM_COMPONENT_DRIVER ; 
 int DRM_FIMC_DEVICE ; 
 int /*<<< orphan*/  ENODEV ; 
 struct component_match* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_dev ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 struct exynos_drm_driver_info* exynos_drm_drivers ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static struct component_match *FUNC6(struct device *dev)
{
	struct component_match *match = NULL;
	int i;

	for (i = 0; i < FUNC0(exynos_drm_drivers); ++i) {
		struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];
		struct device *p = NULL, *d;

		if (!info->driver || !(info->flags & DRM_COMPONENT_DRIVER))
			continue;

		while ((d = FUNC4(p, &info->driver->driver))) {
			FUNC5(p);

			if (!(info->flags & DRM_FIMC_DEVICE) ||
			    FUNC3(d) == 0)
				FUNC2(dev, &match,
						    compare_dev, d);
			p = d;
		}
		FUNC5(p);
	}

	return match ?: FUNC1(-ENODEV);
}