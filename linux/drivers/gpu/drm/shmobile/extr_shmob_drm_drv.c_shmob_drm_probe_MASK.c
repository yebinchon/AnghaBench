#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct shmob_drm_platform_data {int /*<<< orphan*/  clk_source; } ;
struct shmob_drm_device {struct drm_device* ddev; struct drm_device* mmio; int /*<<< orphan*/  irq_lock; struct shmob_drm_platform_data* pdata; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {struct shmob_drm_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct drm_device {struct shmob_drm_device* dev_private; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct drm_device* FUNC3 (TYPE_1__*,struct resource*) ; 
 struct shmob_drm_device* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int FUNC12 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct shmob_drm_device*) ; 
 int /*<<< orphan*/  shmob_drm_driver ; 
 int FUNC16 (struct shmob_drm_device*) ; 
 int FUNC17 (struct shmob_drm_device*) ; 
 int FUNC18 (struct shmob_drm_device*,unsigned int) ; 
 int FUNC19 (struct shmob_drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct shmob_drm_platform_data *pdata = pdev->dev.platform_data;
	struct shmob_drm_device *sdev;
	struct drm_device *ddev;
	struct resource *res;
	unsigned int i;
	int ret;

	if (pdata == NULL) {
		FUNC2(&pdev->dev, "no platform data\n");
		return -EINVAL;
	}

	/*
	 * Allocate and initialize the driver private data, I/O resources and
	 * clocks.
	 */
	sdev = FUNC4(&pdev->dev, sizeof(*sdev), GFP_KERNEL);
	if (sdev == NULL)
		return -ENOMEM;

	sdev->dev = &pdev->dev;
	sdev->pdata = pdata;
	FUNC20(&sdev->irq_lock);

	FUNC15(pdev, sdev);

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	sdev->mmio = FUNC3(&pdev->dev, res);
	if (FUNC0(sdev->mmio))
		return FUNC1(sdev->mmio);

	ret = FUNC19(sdev, pdata->clk_source);
	if (ret < 0)
		return ret;

	ret = FUNC16(sdev);
	if (ret < 0)
		return ret;

	/* Allocate and initialize the DRM device. */
	ddev = FUNC5(&shmob_drm_driver, &pdev->dev);
	if (FUNC0(ddev))
		return FUNC1(ddev);

	sdev->ddev = ddev;
	ddev->dev_private = sdev;

	ret = FUNC17(sdev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to initialize mode setting\n");
		goto err_free_drm_dev;
	}

	for (i = 0; i < 4; ++i) {
		ret = FUNC18(sdev, i);
		if (ret < 0) {
			FUNC2(&pdev->dev, "failed to create plane %u\n", i);
			goto err_modeset_cleanup;
		}
	}

	ret = FUNC12(ddev, 1);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to initialize vblank\n");
		goto err_modeset_cleanup;
	}

	ret = FUNC8(ddev, FUNC13(pdev, 0));
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to install IRQ handler\n");
		goto err_modeset_cleanup;
	}

	/*
	 * Register the DRM device with the core and the connectors with
	 * sysfs.
	 */
	ret = FUNC7(ddev, 0);
	if (ret < 0)
		goto err_irq_uninstall;

	return 0;

err_irq_uninstall:
	FUNC9(ddev);
err_modeset_cleanup:
	FUNC10(ddev);
	FUNC11(ddev);
err_free_drm_dev:
	FUNC6(ddev);

	return ret;
}