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
struct exynos_drm_private {int /*<<< orphan*/  mapping; struct device* dma_dev; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM_DMA_USE_IOMMU ; 
 int /*<<< orphan*/  CONFIG_IOMMU_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 scalar_t__ FUNC7 (struct device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct drm_device *drm_dev,
				struct device *subdrv_dev)
{
	struct exynos_drm_private *priv = drm_dev->dev_private;
	int ret;

	if (FUNC7(priv->dma_dev) != FUNC7(subdrv_dev)) {
		FUNC0(subdrv_dev, "Device %s lacks support for IOMMU\n",
			  FUNC6(subdrv_dev));
		return -EINVAL;
	}

	ret = FUNC5(subdrv_dev);
	if (ret)
		return ret;

	if (FUNC1(CONFIG_ARM_DMA_USE_IOMMU)) {
		if (FUNC9(subdrv_dev))
			FUNC3(subdrv_dev);

		ret = FUNC2(subdrv_dev, priv->mapping);
	} else if (FUNC1(CONFIG_IOMMU_DMA)) {
		ret = FUNC8(priv->mapping, subdrv_dev);
	}

	if (ret)
		FUNC4(subdrv_dev);

	return 0;
}