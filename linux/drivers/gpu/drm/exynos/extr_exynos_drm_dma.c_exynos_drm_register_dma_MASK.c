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
struct exynos_drm_private {void* mapping; struct device* dma_dev; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM_DMA_USE_IOMMU ; 
 int /*<<< orphan*/  CONFIG_EXYNOS_IOMMU ; 
 int /*<<< orphan*/  CONFIG_IOMMU_DMA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXYNOS_DEV_ADDR_SIZE ; 
 int /*<<< orphan*/  EXYNOS_DEV_ADDR_START ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct drm_device*,struct device*) ; 
 void* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  platform_bus_type ; 

int FUNC8(struct drm_device *drm, struct device *dev)
{
	struct exynos_drm_private *priv = drm->dev_private;

	if (!priv->dma_dev) {
		priv->dma_dev = dev;
		FUNC0("Exynos DRM: using %s device for DMA mapping operations\n",
			 FUNC5(dev));
	}

	if (!FUNC1(CONFIG_EXYNOS_IOMMU))
		return 0;

	if (!priv->mapping) {
		void *mapping;

		if (FUNC1(CONFIG_ARM_DMA_USE_IOMMU))
			mapping = FUNC4(&platform_bus_type,
				EXYNOS_DEV_ADDR_START, EXYNOS_DEV_ADDR_SIZE);
		else if (FUNC1(CONFIG_IOMMU_DMA))
			mapping = FUNC7(priv->dma_dev);

		if (FUNC2(mapping))
			return FUNC3(mapping);
		priv->mapping = mapping;
	}

	return FUNC6(drm, dev);
}