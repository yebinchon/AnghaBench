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
struct drm_fb_helper {int dummy; } ;
struct rockchip_drm_private {struct drm_fb_helper fbdev_helper; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_connector; int /*<<< orphan*/  num_crtc; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__ mode_config; struct rockchip_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PREFERRED_BPP ; 
 int /*<<< orphan*/  ROCKCHIP_MAX_CONNECTOR ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int FUNC2 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  rockchip_drm_fb_helper_funcs ; 

int FUNC6(struct drm_device *dev)
{
	struct rockchip_drm_private *private = dev->dev_private;
	struct drm_fb_helper *helper;
	int ret;

	if (!dev->mode_config.num_crtc || !dev->mode_config.num_connector)
		return -EINVAL;

	helper = &private->fbdev_helper;

	FUNC4(dev, helper, &rockchip_drm_fb_helper_funcs);

	ret = FUNC2(dev, helper, ROCKCHIP_MAX_CONNECTOR);
	if (ret < 0) {
		FUNC0(dev->dev,
			      "Failed to initialize drm fb helper - %d.\n",
			      ret);
		return ret;
	}

	ret = FUNC5(helper);
	if (ret < 0) {
		FUNC0(dev->dev,
			      "Failed to add connectors - %d.\n", ret);
		goto err_drm_fb_helper_fini;
	}

	ret = FUNC3(helper, PREFERRED_BPP);
	if (ret < 0) {
		FUNC0(dev->dev,
			      "Failed to set initial hw config - %d.\n",
			      ret);
		goto err_drm_fb_helper_fini;
	}

	return 0;

err_drm_fb_helper_fini:
	FUNC1(helper);
	return ret;
}