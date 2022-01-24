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
struct resource {int dummy; } ;
struct rcar_du_device {struct drm_device* ddev; struct drm_device* mmio; int /*<<< orphan*/ * dev; int /*<<< orphan*/  info; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct drm_device {int irq_enabled; struct rcar_du_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct rcar_du_device* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct rcar_du_device*) ; 
 int /*<<< orphan*/  rcar_du_driver ; 
 int FUNC13 (struct rcar_du_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct rcar_du_device *rcdu;
	struct drm_device *ddev;
	struct resource *mem;
	int ret;

	/* Allocate and initialize the R-Car device structure. */
	rcdu = FUNC6(&pdev->dev, sizeof(*rcdu), GFP_KERNEL);
	if (rcdu == NULL)
		return -ENOMEM;

	rcdu->dev = &pdev->dev;
	rcdu->info = FUNC10(rcdu->dev);

	FUNC12(pdev, rcdu);

	/* I/O resources */
	mem = FUNC11(pdev, IORESOURCE_MEM, 0);
	rcdu->mmio = FUNC5(&pdev->dev, mem);
	if (FUNC1(rcdu->mmio))
		return FUNC2(rcdu->mmio);

	/* DRM/KMS objects */
	ddev = FUNC7(&rcar_du_driver, &pdev->dev);
	if (FUNC1(ddev))
		return FUNC2(ddev);

	rcdu->ddev = ddev;
	ddev->dev_private = rcdu;

	ret = FUNC13(rcdu);
	if (ret < 0) {
		if (ret != -EPROBE_DEFER)
			FUNC3(&pdev->dev,
				"failed to initialize DRM/KMS (%d)\n", ret);
		goto error;
	}

	ddev->irq_enabled = 1;

	/*
	 * Register the DRM device with the core and the connectors with
	 * sysfs.
	 */
	ret = FUNC8(ddev, 0);
	if (ret)
		goto error;

	FUNC0("Device %s probed\n", FUNC4(&pdev->dev));

	FUNC9(ddev, 32);

	return 0;

error:
	FUNC14(pdev);

	return ret;
}