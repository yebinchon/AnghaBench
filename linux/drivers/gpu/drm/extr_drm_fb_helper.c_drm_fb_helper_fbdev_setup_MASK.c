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
struct drm_fb_helper_funcs {int dummy; } ;
struct drm_fb_helper {int dummy; } ;
struct TYPE_2__ {unsigned int preferred_depth; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,struct drm_fb_helper*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_fb_helper*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_fb_helper*,struct drm_fb_helper_funcs const*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

int FUNC7(struct drm_device *dev,
			      struct drm_fb_helper *fb_helper,
			      const struct drm_fb_helper_funcs *funcs,
			      unsigned int preferred_bpp,
			      unsigned int max_conn_count)
{
	int ret;

	if (!preferred_bpp)
		preferred_bpp = dev->mode_config.preferred_depth;
	if (!preferred_bpp)
		preferred_bpp = 32;

	FUNC5(dev, fb_helper, funcs);

	ret = FUNC3(dev, fb_helper, 0);
	if (ret < 0) {
		FUNC0(dev->dev, "fbdev: Failed to initialize (ret=%d)\n", ret);
		return ret;
	}

	if (!FUNC1(dev))
		FUNC6(dev);

	ret = FUNC4(fb_helper, preferred_bpp);
	if (ret < 0) {
		FUNC0(dev->dev, "fbdev: Failed to set configuration (ret=%d)\n", ret);
		goto err_drm_fb_helper_fini;
	}

	return 0;

err_drm_fb_helper_fini:
	FUNC2(dev);

	return ret;
}