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
struct etnaviv_drm_private {struct drm_device* cmdbuf_suballoc; scalar_t__ num_gpus; int /*<<< orphan*/  gem_list; int /*<<< orphan*/  gem_lock; int /*<<< orphan*/  dma_parms; } ;
struct drm_device {struct device* dev; struct etnaviv_drm_private* dev_private; } ;
struct device {int /*<<< orphan*/ * dma_parms; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  SZ_2G ; 
 int FUNC3 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC8 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int FUNC10 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 struct drm_device* FUNC12 (struct device*) ; 
 int /*<<< orphan*/  etnaviv_drm_driver ; 
 int /*<<< orphan*/  FUNC13 (struct etnaviv_drm_private*) ; 
 struct etnaviv_drm_private* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct device *dev)
{
	struct etnaviv_drm_private *priv;
	struct drm_device *drm;
	int ret;

	drm = FUNC8(&etnaviv_drm_driver, dev);
	if (FUNC1(drm))
		return FUNC2(drm);

	priv = FUNC14(sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		FUNC5(dev, "failed to allocate private data\n");
		ret = -ENOMEM;
		goto out_put;
	}
	drm->dev_private = priv;

	dev->dma_parms = &priv->dma_parms;
	FUNC7(dev, SZ_2G);

	FUNC16(&priv->gem_lock);
	FUNC0(&priv->gem_list);
	priv->num_gpus = 0;

	priv->cmdbuf_suballoc = FUNC12(drm->dev);
	if (FUNC1(priv->cmdbuf_suballoc)) {
		FUNC5(drm->dev, "Failed to create cmdbuf suballocator\n");
		ret = FUNC2(priv->cmdbuf_suballoc);
		goto out_free_priv;
	}

	FUNC6(dev, drm);

	ret = FUNC3(dev, drm);
	if (ret < 0)
		goto out_destroy_suballoc;

	FUNC15(drm);

	ret = FUNC10(drm, 0);
	if (ret)
		goto out_unbind;

	return 0;

out_unbind:
	FUNC4(dev, drm);
out_destroy_suballoc:
	FUNC11(priv->cmdbuf_suballoc);
out_free_priv:
	FUNC13(priv);
out_put:
	FUNC9(drm);

	return ret;
}