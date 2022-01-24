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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct nouveau_fbdev {TYPE_1__ helper; } ;
struct nouveau_drm {struct nouveau_channel* channel; } ;
struct nouveau_channel {int dummy; } ;
struct fb_info {struct nouveau_fbdev* par; } ;
struct fb_copyarea {int sy; int sx; int dy; int dx; int height; int width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NvSubImageBlit ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (struct nouveau_channel*,int) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct fb_info *info, const struct fb_copyarea *region)
{
	struct nouveau_fbdev *nfbdev = info->par;
	struct nouveau_drm *drm = FUNC4(nfbdev->helper.dev);
	struct nouveau_channel *chan = drm->channel;
	int ret;

	ret = FUNC3(chan, 4);
	if (ret)
		return ret;

	FUNC0(chan, NvSubImageBlit, 0x0300, 3);
	FUNC2(chan, (region->sy << 16) | region->sx);
	FUNC2(chan, (region->dy << 16) | region->dx);
	FUNC2(chan, (region->height << 16) | region->width);
	FUNC1(chan);
	return 0;
}