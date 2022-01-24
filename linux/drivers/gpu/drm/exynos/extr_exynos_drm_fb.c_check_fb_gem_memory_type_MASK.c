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
struct exynos_drm_gem {unsigned int flags; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 

__attribute__((used)) static int FUNC3(struct drm_device *drm_dev,
				    struct exynos_drm_gem *exynos_gem)
{
	unsigned int flags;

	/*
	 * if exynos drm driver supports iommu then framebuffer can use
	 * all the buffer types.
	 */
	if (FUNC2(drm_dev))
		return 0;

	flags = exynos_gem->flags;

	/*
	 * Physically non-contiguous memory type for framebuffer is not
	 * supported without IOMMU.
	 */
	if (FUNC1(flags)) {
		FUNC0(drm_dev->dev,
			      "Non-contiguous GEM memory is not supported.\n");
		return -EINVAL;
	}

	return 0;
}