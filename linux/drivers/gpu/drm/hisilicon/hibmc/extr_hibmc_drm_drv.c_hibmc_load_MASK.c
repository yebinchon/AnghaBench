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
struct hibmc_drm_private {int msi_enabled; struct drm_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_crtc; } ;
struct drm_device {TYPE_2__* pdev; TYPE_1__ mode_config; struct hibmc_drm_private* dev_private; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hibmc_drm_private* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hibmc_drm_private*) ; 
 int FUNC7 (struct hibmc_drm_private*) ; 
 int FUNC8 (struct hibmc_drm_private*) ; 
 int FUNC9 (struct hibmc_drm_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct drm_device *dev)
{
	struct hibmc_drm_private *priv;
	int ret;

	priv = FUNC2(dev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		FUNC0("no memory to allocate for hibmc_drm_private\n");
		return -ENOMEM;
	}
	dev->dev_private = priv;
	priv->dev = dev;

	ret = FUNC7(priv);
	if (ret)
		goto err;

	ret = FUNC9(priv);
	if (ret)
		goto err;

	ret = FUNC8(priv);
	if (ret)
		goto err;

	ret = FUNC5(dev, dev->mode_config.num_crtc);
	if (ret) {
		FUNC0("failed to initialize vblank: %d\n", ret);
		goto err;
	}

	priv->msi_enabled = 0;
	ret = FUNC11(dev->pdev);
	if (ret) {
		FUNC1("enabling MSI failed: %d\n", ret);
	} else {
		priv->msi_enabled = 1;
		ret = FUNC3(dev, dev->pdev->irq);
		if (ret)
			FUNC1("install irq failed: %d\n", ret);
	}

	/* reset all the states of crtc/plane/encoder/connector */
	FUNC4(dev);

	ret = FUNC6(priv);
	if (ret) {
		FUNC0("failed to initialize fbdev: %d\n", ret);
		goto err;
	}

	return 0;

err:
	FUNC10(dev);
	FUNC0("failed to initialize drm driver: %d\n", ret);
	return ret;
}