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
struct drm_fb_helper {int /*<<< orphan*/ * fbdev; int /*<<< orphan*/ * dev; int /*<<< orphan*/  preferred_bpp; scalar_t__ funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_connector; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__ mode_config; scalar_t__ fb_helper; } ;
struct drm_client_dev {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 struct drm_fb_helper* FUNC3 (struct drm_client_dev*) ; 
 int /*<<< orphan*/  drm_fb_helper_generic_funcs ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 

__attribute__((used)) static int FUNC10(struct drm_client_dev *client)
{
	struct drm_fb_helper *fb_helper = FUNC3(client);
	struct drm_device *dev = client->dev;
	int ret;

	/* Setup is not retried if it has failed */
	if (!fb_helper->dev && fb_helper->funcs)
		return 0;

	if (dev->fb_helper)
		return FUNC4(dev->fb_helper);

	if (!dev->mode_config.num_connector) {
		FUNC0(dev->dev, "No connectors found, will not create framebuffer!\n");
		return 0;
	}

	FUNC7(dev, fb_helper, &drm_fb_helper_generic_funcs);

	ret = FUNC5(dev, fb_helper, 0);
	if (ret)
		goto err;

	if (!FUNC2(dev))
		FUNC9(dev);

	ret = FUNC6(fb_helper, fb_helper->preferred_bpp);
	if (ret)
		goto err_cleanup;

	return 0;

err_cleanup:
	FUNC8(fb_helper);
err:
	fb_helper->dev = NULL;
	fb_helper->fbdev = NULL;

	FUNC1(dev->dev, "fbdev: Failed to setup generic emulation (ret=%d)\n", ret);

	return ret;
}