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
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  atmel_hlcdc_dc_driver ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 struct drm_device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct drm_device *ddev;
	int ret;

	ddev = FUNC4(&atmel_hlcdc_dc_driver, &pdev->dev);
	if (FUNC0(ddev))
		return FUNC1(ddev);

	ret = FUNC2(ddev);
	if (ret)
		goto err_put;

	ret = FUNC6(ddev, 0);
	if (ret)
		goto err_unload;

	FUNC7(ddev, 24);

	return 0;

err_unload:
	FUNC3(ddev);

err_put:
	FUNC5(ddev);

	return ret;
}