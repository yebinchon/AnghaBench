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
struct soc_device_attribute {scalar_t__ data; } ;
struct omap_drm_private {unsigned int omaprev; unsigned int num_pipes; int /*<<< orphan*/  wq; TYPE_1__* pipes; struct device* dev; int /*<<< orphan*/  dispc; TYPE_2__* dispc_ops; int /*<<< orphan*/  max_bandwidth; int /*<<< orphan*/  obj_list; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  dss; struct drm_device* ddev; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_memory_bandwidth_limit ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC11 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int FUNC13 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*) ; 
 int FUNC17 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct omap_drm_private*) ; 
 int /*<<< orphan*/  FUNC20 (struct omap_drm_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_device*) ; 
 int /*<<< orphan*/  omap_drm_driver ; 
 int /*<<< orphan*/  FUNC22 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_device*) ; 
 int FUNC29 (struct drm_device*) ; 
 int /*<<< orphan*/  omapdrm_soc_devices ; 
 int /*<<< orphan*/  FUNC30 () ; 
 struct soc_device_attribute* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC33(struct omap_drm_private *priv, struct device *dev)
{
	const struct soc_device_attribute *soc;
	struct drm_device *ddev;
	unsigned int i;
	int ret;

	FUNC0("%s", FUNC7(dev));

	/* Allocate and initialize the DRM device. */
	ddev = FUNC11(&omap_drm_driver, dev);
	if (FUNC2(ddev))
		return FUNC3(ddev);

	priv->ddev = ddev;
	ddev->dev_private = priv;

	priv->dev = dev;
	priv->dss = FUNC30();
	priv->dispc = FUNC8(priv->dss);
	priv->dispc_ops = FUNC9(priv->dss);

	FUNC19(priv);

	soc = FUNC31(omapdrm_soc_devices);
	priv->omaprev = soc ? (unsigned int)soc->data : 0;
	priv->wq = FUNC4("omapdrm", 0);

	FUNC18(&priv->list_lock);
	FUNC1(&priv->obj_list);

	/* Get memory bandwidth limits */
	if (priv->dispc_ops->get_memory_bandwidth_limit)
		priv->max_bandwidth =
			priv->dispc_ops->get_memory_bandwidth_limit(priv->dispc);

	FUNC26(ddev);

	ret = FUNC29(ddev);
	if (ret) {
		FUNC6(priv->dev, "omap_modeset_init failed: ret=%d\n", ret);
		goto err_gem_deinit;
	}

	/* Initialize vblank handling, start with all CRTCs disabled. */
	ret = FUNC17(ddev, priv->num_pipes);
	if (ret) {
		FUNC6(priv->dev, "could not init vblank\n");
		goto err_cleanup_modeset;
	}

	for (i = 0; i < priv->num_pipes; i++)
		FUNC10(priv->pipes[i].crtc);

	FUNC24(ddev);

	FUNC15(ddev);
	FUNC28(ddev);

	/*
	 * Register the DRM device with the core and the connectors with
	 * sysfs.
	 */
	ret = FUNC13(ddev, 0);
	if (ret)
		goto err_cleanup_helpers;

	return 0;

err_cleanup_helpers:
	FUNC27(ddev);
	FUNC14(ddev);

	FUNC23(ddev);
err_cleanup_modeset:
	FUNC16(ddev);
	FUNC22(ddev);
err_gem_deinit:
	FUNC25(ddev);
	FUNC5(priv->wq);
	FUNC21(ddev);
	FUNC20(priv);
	FUNC12(ddev);
	return ret;
}