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
struct platform_device {int dummy; } ;
struct exynos_drm_driver_info {int flags; TYPE_2__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int FUNC0 (struct exynos_drm_driver_info*) ; 
 int DRM_VIRTUAL_DEVICE ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 struct exynos_drm_driver_info* exynos_drm_drivers ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct platform_device *pdev;
	int i;

	for (i = 0; i < FUNC0(exynos_drm_drivers); ++i) {
		struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];

		if (!info->driver || !(info->flags & DRM_VIRTUAL_DEVICE))
			continue;

		pdev = FUNC4(
					info->driver->driver.name, -1, NULL, 0);
		if (FUNC1(pdev))
			goto fail;
	}

	return 0;
fail:
	FUNC3();
	return FUNC2(pdev);
}