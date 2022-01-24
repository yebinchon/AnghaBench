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
struct drm_fb_helper {unsigned int preferred_bpp; int /*<<< orphan*/  client; } ;
struct TYPE_2__ {unsigned int preferred_depth; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__ mode_config; int /*<<< orphan*/  fb_helper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drm_fbdev_client_funcs ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drm_fbdev_emulation ; 
 int /*<<< orphan*/  FUNC6 (struct drm_fb_helper*) ; 
 struct drm_fb_helper* FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(struct drm_device *dev, unsigned int preferred_bpp)
{
	struct drm_fb_helper *fb_helper;
	int ret;

	FUNC2(dev->fb_helper, "fb_helper is already set!\n");

	if (!drm_fbdev_emulation)
		return 0;

	fb_helper = FUNC7(sizeof(*fb_helper), GFP_KERNEL);
	if (!fb_helper)
		return -ENOMEM;

	ret = FUNC3(dev, &fb_helper->client, "fbdev", &drm_fbdev_client_funcs);
	if (ret) {
		FUNC6(fb_helper);
		FUNC1(dev->dev, "Failed to register client: %d\n", ret);
		return ret;
	}

	if (!preferred_bpp)
		preferred_bpp = dev->mode_config.preferred_depth;
	if (!preferred_bpp)
		preferred_bpp = 32;
	fb_helper->preferred_bpp = preferred_bpp;

	ret = FUNC5(&fb_helper->client);
	if (ret)
		FUNC0(dev->dev, "client hotplug ret=%d\n", ret);

	FUNC4(&fb_helper->client);

	return 0;
}