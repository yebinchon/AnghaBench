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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lima_device {int id; struct drm_device* ddev; int /*<<< orphan*/ * dev; struct platform_device* pdev; } ;
struct drm_device {struct lima_device* dev_private; } ;
typedef  enum lima_gpu_id { ____Placeholder_lima_gpu_id } lima_gpu_id ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 struct lima_device* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lima_device*) ; 
 int FUNC7 (struct lima_device*) ; 
 int /*<<< orphan*/  lima_drm_driver ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct lima_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct lima_device *ldev;
	struct drm_device *ddev;
	int err;

	err = FUNC9();
	if (err)
		return err;

	ldev = FUNC2(&pdev->dev, sizeof(*ldev), GFP_KERNEL);
	if (!ldev) {
		err = -ENOMEM;
		goto err_out0;
	}

	ldev->pdev = pdev;
	ldev->dev = &pdev->dev;
	ldev->id = (enum lima_gpu_id)FUNC10(&pdev->dev);

	FUNC11(pdev, ldev);

	/* Allocate and initialize the DRM device. */
	ddev = FUNC3(&lima_drm_driver, &pdev->dev);
	if (FUNC0(ddev))
		return FUNC1(ddev);

	ddev->dev_private = ldev;
	ldev->ddev = ddev;

	err = FUNC7(ldev);
	if (err)
		goto err_out1;

	/*
	 * Register the DRM device with the core and the connectors with
	 * sysfs.
	 */
	err = FUNC5(ddev, 0);
	if (err < 0)
		goto err_out2;

	return 0;

err_out2:
	FUNC6(ldev);
err_out1:
	FUNC4(ddev);
err_out0:
	FUNC8();
	return err;
}