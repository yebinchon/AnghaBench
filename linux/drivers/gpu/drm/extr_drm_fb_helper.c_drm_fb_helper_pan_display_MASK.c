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
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {int /*<<< orphan*/  lock; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ oops_in_progress ; 
 int FUNC5 (struct fb_var_screeninfo*,struct fb_info*) ; 
 int FUNC6 (struct fb_var_screeninfo*,struct fb_info*) ; 

int FUNC7(struct fb_var_screeninfo *var,
			      struct fb_info *info)
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

	if (FUNC0(dev))
		ret = FUNC5(var, info);
	else
		ret = FUNC6(var, info);

	FUNC2(dev);
unlock:
	FUNC4(&fb_helper->lock);

	return ret;
}