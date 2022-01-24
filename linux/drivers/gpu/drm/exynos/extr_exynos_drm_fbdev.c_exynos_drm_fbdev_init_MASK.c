#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct exynos_drm_private {struct drm_fb_helper* fb_helper; } ;
struct drm_fb_helper {int dummy; } ;
struct exynos_drm_fbdev {struct drm_fb_helper drm_fb_helper; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_crtc; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__ mode_config; struct exynos_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_CONNECTOR ; 
 int /*<<< orphan*/  PREFERRED_BPP ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int FUNC2 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  exynos_drm_fb_helper_funcs ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_drm_fbdev*) ; 
 struct exynos_drm_fbdev* FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(struct drm_device *dev)
{
	struct exynos_drm_fbdev *fbdev;
	struct exynos_drm_private *private = dev->dev_private;
	struct drm_fb_helper *helper;
	int ret;

	if (!dev->mode_config.num_crtc)
		return 0;

	fbdev = FUNC7(sizeof(*fbdev), GFP_KERNEL);
	if (!fbdev)
		return -ENOMEM;

	private->fb_helper = helper = &fbdev->drm_fb_helper;

	FUNC4(dev, helper, &exynos_drm_fb_helper_funcs);

	ret = FUNC2(dev, helper, MAX_CONNECTOR);
	if (ret < 0) {
		FUNC0(dev->dev,
			      "failed to initialize drm fb helper.\n");
		goto err_init;
	}

	ret = FUNC5(helper);
	if (ret < 0) {
		FUNC0(dev->dev,
			      "failed to register drm_fb_helper_connector.\n");
		goto err_setup;

	}

	ret = FUNC3(helper, PREFERRED_BPP);
	if (ret < 0) {
		FUNC0(dev->dev,
			      "failed to set up hw configuration.\n");
		goto err_setup;
	}

	return 0;

err_setup:
	FUNC1(helper);

err_init:
	private->fb_helper = NULL;
	FUNC6(fbdev);

	return ret;
}