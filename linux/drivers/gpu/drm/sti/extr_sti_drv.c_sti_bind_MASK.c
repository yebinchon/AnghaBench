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
struct drm_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct drm_device*) ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  sti_driver ; 
 int FUNC9 (struct drm_device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct drm_device *ddev;
	int ret;

	ddev = FUNC3(&sti_driver, dev);
	if (FUNC0(ddev))
		return FUNC1(ddev);

	ret = FUNC9(ddev);
	if (ret)
		goto err_drm_dev_put;

	ret = FUNC2(ddev->dev, ddev);
	if (ret)
		goto err_cleanup;

	ret = FUNC5(ddev, 0);
	if (ret)
		goto err_cleanup;

	FUNC7(ddev);

	FUNC6(ddev, 32);

	return 0;

err_cleanup:
	FUNC8(ddev);
err_drm_dev_put:
	FUNC4(ddev);
	return ret;
}