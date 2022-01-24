#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ visual; } ;
struct fb_info {TYPE_1__ fix; struct drm_fb_helper* par; } ;
struct fb_cmap {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  modeset_mutex; } ;
struct drm_fb_helper {int /*<<< orphan*/  lock; TYPE_2__ client; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FB_VISUAL_TRUECOLOR ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ oops_in_progress ; 
 int FUNC5 (struct fb_cmap*,struct fb_info*) ; 
 int FUNC6 (struct fb_cmap*,struct fb_info*) ; 
 int FUNC7 (struct fb_cmap*,struct fb_info*) ; 

int FUNC8(struct fb_cmap *cmap, struct fb_info *info)
{
	struct drm_fb_helper *fb_helper = info->par;
	struct drm_device *dev = fb_helper->dev;
	int ret;

	if (oops_in_progress)
		return -EBUSY;

	FUNC3(&fb_helper->lock);

	if (!FUNC1(dev)) {
		ret = -EBUSY;
		goto unlock;
	}

	FUNC3(&fb_helper->client.modeset_mutex);
	if (info->fix.visual == FB_VISUAL_TRUECOLOR)
		ret = FUNC7(cmap, info);
	else if (FUNC0(fb_helper->dev))
		ret = FUNC5(cmap, info);
	else
		ret = FUNC6(cmap, info);
	FUNC4(&fb_helper->client.modeset_mutex);

	FUNC2(dev);
unlock:
	FUNC4(&fb_helper->lock);

	return ret;
}