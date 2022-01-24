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
struct fb_info {int skip_vt_switch; int /*<<< orphan*/  cmap; int /*<<< orphan*/  apertures; } ;
struct drm_fb_helper {struct fb_info* fbdev; TYPE_1__* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fb_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC4 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 

struct fb_info *FUNC6(struct drm_fb_helper *fb_helper)
{
	struct device *dev = fb_helper->dev->dev;
	struct fb_info *info;
	int ret;

	info = FUNC4(0, dev);
	if (!info)
		return FUNC0(-ENOMEM);

	ret = FUNC2(&info->cmap, 256, 0);
	if (ret)
		goto err_release;

	info->apertures = FUNC1(1);
	if (!info->apertures) {
		ret = -ENOMEM;
		goto err_free_cmap;
	}

	fb_helper->fbdev = info;
	info->skip_vt_switch = true;

	return info;

err_free_cmap:
	FUNC3(&info->cmap);
err_release:
	FUNC5(info);
	return FUNC0(ret);
}