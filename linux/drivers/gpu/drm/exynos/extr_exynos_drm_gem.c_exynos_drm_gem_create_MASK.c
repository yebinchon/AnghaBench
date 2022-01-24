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
struct exynos_drm_gem {unsigned int flags; int /*<<< orphan*/  base; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 struct exynos_drm_gem* FUNC2 (int) ; 
 unsigned int EXYNOS_BO_MASK ; 
 unsigned int EXYNOS_BO_NONCONTIG ; 
 scalar_t__ FUNC3 (struct exynos_drm_gem*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct exynos_drm_gem*) ; 
 struct exynos_drm_gem* FUNC6 (struct drm_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct exynos_drm_gem*) ; 
 unsigned long FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 

struct exynos_drm_gem *FUNC10(struct drm_device *dev,
					     unsigned int flags,
					     unsigned long size)
{
	struct exynos_drm_gem *exynos_gem;
	int ret;

	if (flags & ~(EXYNOS_BO_MASK)) {
		FUNC0(dev->dev,
			      "invalid GEM buffer flags: %u\n", flags);
		return FUNC2(-EINVAL);
	}

	if (!size) {
		FUNC0(dev->dev, "invalid GEM buffer size: %lu\n", size);
		return FUNC2(-EINVAL);
	}

	size = FUNC9(size, PAGE_SIZE);

	exynos_gem = FUNC6(dev, size);
	if (FUNC3(exynos_gem))
		return exynos_gem;

	if (!FUNC7(dev) && (flags & EXYNOS_BO_NONCONTIG)) {
		/*
		 * when no IOMMU is available, all allocated buffers are
		 * contiguous anyway, so drop EXYNOS_BO_NONCONTIG flag
		 */
		flags &= ~EXYNOS_BO_NONCONTIG;
		FUNC1("Non-contiguous allocation is not supported without IOMMU, falling back to contiguous buffer\n");
	}

	/* set memory type and cache attribute from user side. */
	exynos_gem->flags = flags;

	ret = FUNC5(exynos_gem);
	if (ret < 0) {
		FUNC4(&exynos_gem->base);
		FUNC8(exynos_gem);
		return FUNC2(ret);
	}

	return exynos_gem;
}