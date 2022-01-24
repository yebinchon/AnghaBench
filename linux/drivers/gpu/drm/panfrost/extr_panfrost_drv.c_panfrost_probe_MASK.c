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
struct panfrost_device {int /*<<< orphan*/ * dev; int /*<<< orphan*/  shrinker_list; int /*<<< orphan*/  shrinker_lock; struct drm_device* ddev; struct platform_device* pdev; } ;
struct drm_device {struct panfrost_device* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct panfrost_device* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct panfrost_device*) ; 
 int FUNC10 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct panfrost_device*) ; 
 int FUNC12 (struct panfrost_device*) ; 
 int /*<<< orphan*/  panfrost_drm_driver ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct panfrost_device *pfdev;
	struct drm_device *ddev;
	int err;

	pfdev = FUNC4(&pdev->dev, sizeof(*pfdev), GFP_KERNEL);
	if (!pfdev)
		return -ENOMEM;

	pfdev->pdev = pdev;
	pfdev->dev = &pdev->dev;

	FUNC14(pdev, pfdev);

	/* Allocate and initialze the DRM device. */
	ddev = FUNC5(&panfrost_drm_driver, &pdev->dev);
	if (FUNC1(ddev))
		return FUNC2(ddev);

	ddev->dev_private = pfdev;
	pfdev->ddev = ddev;

	FUNC8(&pfdev->shrinker_lock);
	FUNC0(&pfdev->shrinker_list);

	err = FUNC12(pfdev);
	if (err) {
		if (err != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "Fatal error during GPU init\n");
		goto err_out0;
	}

	err = FUNC10(pfdev);
	if (err) {
		if (err != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "Fatal error during devfreq init\n");
		goto err_out1;
	}

	FUNC18(pfdev->dev);
	FUNC17(pfdev->dev);
	FUNC16(pfdev->dev);
	FUNC19(pfdev->dev, 50); /* ~3 frames */
	FUNC20(pfdev->dev);

	/*
	 * Register the DRM device with the core and the connectors with
	 * sysfs
	 */
	err = FUNC7(ddev, 0);
	if (err < 0)
		goto err_out2;

	FUNC13(ddev);

	return 0;

err_out2:
	FUNC15(pfdev->dev);
	FUNC9(pfdev);
err_out1:
	FUNC11(pfdev);
err_out0:
	FUNC6(ddev);
	return err;
}