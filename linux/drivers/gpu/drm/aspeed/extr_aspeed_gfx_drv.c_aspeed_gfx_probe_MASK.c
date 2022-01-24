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
 int /*<<< orphan*/  aspeed_gfx_driver ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 struct drm_device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct drm_device *drm;
	int ret;

	drm = FUNC4(&aspeed_gfx_driver, &pdev->dev);
	if (FUNC0(drm))
		return FUNC1(drm);

	ret = FUNC2(drm);
	if (ret)
		goto err_free;

	ret = FUNC6(drm, 0);
	if (ret)
		goto err_unload;

	return 0;

err_unload:
	FUNC3(drm);
err_free:
	FUNC5(drm);

	return ret;
}