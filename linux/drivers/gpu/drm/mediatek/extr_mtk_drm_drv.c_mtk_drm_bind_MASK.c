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
struct mtk_drm_private {struct drm_device* drm; } ;
struct drm_device {struct mtk_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 struct mtk_drm_private* FUNC3 (struct device*) ; 
 struct drm_device* FUNC4 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_device*,int) ; 
 int /*<<< orphan*/  mtk_drm_driver ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct mtk_drm_private *private = FUNC3(dev);
	struct drm_device *drm;
	int ret;

	drm = FUNC4(&mtk_drm_driver, dev);
	if (FUNC1(drm))
		return FUNC2(drm);

	drm->dev_private = private;
	private->drm = drm;

	ret = FUNC9(drm);
	if (ret < 0)
		goto err_free;

	ret = FUNC6(drm, 0);
	if (ret < 0)
		goto err_deinit;

	ret = FUNC7(drm, 32);
	if (ret)
		FUNC0("Failed to initialize fbdev: %d\n", ret);

	return 0;

err_deinit:
	FUNC8(drm);
err_free:
	FUNC5(drm);
	return ret;
}