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
struct fb_copyarea {int /*<<< orphan*/  sy; int /*<<< orphan*/  sx; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NvSub2D ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nouveau_channel*,int) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct fb_info *info, const struct fb_copyarea *region)
{
	struct nouveau_fbdev *nfbdev = info->par;
	struct nouveau_drm *drm = FUNC4(nfbdev->helper.dev);
	struct nouveau_channel *chan = drm->channel;
	int ret;

	ret = FUNC3(chan, 12);
	if (ret)
		return ret;

	FUNC0(chan, NvSub2D, 0x0110, 1);
	FUNC2(chan, 0);
	FUNC0(chan, NvSub2D, 0x08b0, 4);
	FUNC2(chan, region->dx);
	FUNC2(chan, region->dy);
	FUNC2(chan, region->width);
	FUNC2(chan, region->height);
	FUNC0(chan, NvSub2D, 0x08d0, 4);
	FUNC2(chan, 0);
	FUNC2(chan, region->sx);
	FUNC2(chan, 0);
	FUNC2(chan, region->sy);
	FUNC1(chan);
	return 0;
}