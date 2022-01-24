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
struct exynos_drm_driver_info {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (struct exynos_drm_driver_info*) ; 
 struct exynos_drm_driver_info* exynos_drm_drivers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;

	for (i = FUNC0(exynos_drm_drivers) - 1; i >= 0; --i) {
		struct exynos_drm_driver_info *info = &exynos_drm_drivers[i];

		if (!info->driver)
			continue;

		FUNC1(info->driver);
	}
}