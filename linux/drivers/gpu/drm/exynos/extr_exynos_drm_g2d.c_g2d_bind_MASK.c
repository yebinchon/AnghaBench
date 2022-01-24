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
struct g2d_data {struct drm_device* drm_dev; } ;
struct exynos_drm_private {struct device* g2d_dev; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G2D_HW_MAJOR_VER ; 
 int /*<<< orphan*/  G2D_HW_MINOR_VER ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct g2d_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_device*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct g2d_data*) ; 
 int FUNC5 (struct g2d_data*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct device *master, void *data)
{
	struct g2d_data *g2d = FUNC1(dev);
	struct drm_device *drm_dev = data;
	struct exynos_drm_private *priv = drm_dev->dev_private;
	int ret;

	g2d->drm_dev = drm_dev;

	/* allocate dma-aware cmdlist buffer. */
	ret = FUNC5(g2d);
	if (ret < 0) {
		FUNC0(dev, "cmdlist init failed\n");
		return ret;
	}

	ret = FUNC3(drm_dev, dev);
	if (ret < 0) {
		FUNC0(dev, "failed to enable iommu.\n");
		FUNC4(g2d);
		return ret;
	}
	priv->g2d_dev = dev;

	FUNC2(dev, "The Exynos G2D (ver %d.%d) successfully registered.\n",
			G2D_HW_MAJOR_VER, G2D_HW_MINOR_VER);
	return 0;
}