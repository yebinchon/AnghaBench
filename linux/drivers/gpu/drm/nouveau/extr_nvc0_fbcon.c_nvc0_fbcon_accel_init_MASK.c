#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nouveau_framebuffer {TYPE_5__* vma; } ;
struct TYPE_12__ {int handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  fb; struct drm_device* dev; } ;
struct nouveau_fbdev {TYPE_6__ twod; TYPE_1__ helper; } ;
struct nouveau_drm {struct nouveau_channel* channel; } ;
struct nouveau_channel {int /*<<< orphan*/  user; } ;
struct TYPE_8__ {int /*<<< orphan*/  length; } ;
struct TYPE_10__ {int bits_per_pixel; int xres_virtual; int yres_virtual; TYPE_2__ transp; } ;
struct TYPE_9__ {int line_length; } ;
struct fb_info {TYPE_4__ var; TYPE_3__ fix; struct nouveau_fbdev* par; } ;
struct drm_device {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NvSub2D ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (struct nouveau_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 
 struct nouveau_framebuffer* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(struct fb_info *info)
{
	struct nouveau_fbdev *nfbdev = info->par;
	struct drm_device *dev = nfbdev->helper.dev;
	struct nouveau_framebuffer *fb = FUNC8(nfbdev->helper.fb);
	struct nouveau_drm *drm = FUNC6(dev);
	struct nouveau_channel *chan = drm->channel;
	int ret, format;

	ret = FUNC9(&chan->user, 0x902d, 0x902d, NULL, 0,
			       &nfbdev->twod);
	if (ret)
		return ret;

	switch (info->var.bits_per_pixel) {
	case 8:
		format = 0xf3;
		break;
	case 15:
		format = 0xf8;
		break;
	case 16:
		format = 0xe8;
		break;
	case 32:
		switch (info->var.transp.length) {
		case 0: /* depth 24 */
		case 8: /* depth 32, just use 24.. */
			format = 0xe6;
			break;
		case 2: /* depth 30 */
			format = 0xd1;
			break;
		default:
			return -EINVAL;
		}
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC3(chan, 58);
	if (ret) {
		FUNC4(1);
		FUNC7(info);
		return ret;
	}

	FUNC0(chan, NvSub2D, 0x0000, 1);
	FUNC2  (chan, nfbdev->twod.handle);
	FUNC0(chan, NvSub2D, 0x0290, 1);
	FUNC2  (chan, 0);
	FUNC0(chan, NvSub2D, 0x0888, 1);
	FUNC2  (chan, 1);
	FUNC0(chan, NvSub2D, 0x02ac, 1);
	FUNC2  (chan, 3);
	FUNC0(chan, NvSub2D, 0x02a0, 1);
	FUNC2  (chan, 0x55);
	FUNC0(chan, NvSub2D, 0x08c0, 4);
	FUNC2  (chan, 0);
	FUNC2  (chan, 1);
	FUNC2  (chan, 0);
	FUNC2  (chan, 1);
	FUNC0(chan, NvSub2D, 0x0580, 2);
	FUNC2  (chan, 4);
	FUNC2  (chan, format);
	FUNC0(chan, NvSub2D, 0x02e8, 2);
	FUNC2  (chan, 2);
	FUNC2  (chan, 1);

	FUNC0(chan, NvSub2D, 0x0804, 1);
	FUNC2  (chan, format);
	FUNC0(chan, NvSub2D, 0x0800, 1);
	FUNC2  (chan, 1);
	FUNC0(chan, NvSub2D, 0x0808, 3);
	FUNC2  (chan, 0);
	FUNC2  (chan, 0);
	FUNC2  (chan, 1);
	FUNC0(chan, NvSub2D, 0x081c, 1);
	FUNC2  (chan, 1);
	FUNC0(chan, NvSub2D, 0x0840, 4);
	FUNC2  (chan, 0);
	FUNC2  (chan, 1);
	FUNC2  (chan, 0);
	FUNC2  (chan, 1);
	FUNC0(chan, NvSub2D, 0x0200, 10);
	FUNC2  (chan, format);
	FUNC2  (chan, 1);
	FUNC2  (chan, 0);
	FUNC2  (chan, 1);
	FUNC2  (chan, 0);
	FUNC2  (chan, info->fix.line_length);
	FUNC2  (chan, info->var.xres_virtual);
	FUNC2  (chan, info->var.yres_virtual);
	FUNC2  (chan, FUNC10(fb->vma->addr));
	FUNC2  (chan, FUNC5(fb->vma->addr));
	FUNC0(chan, NvSub2D, 0x0230, 10);
	FUNC2  (chan, format);
	FUNC2  (chan, 1);
	FUNC2  (chan, 0);
	FUNC2  (chan, 1);
	FUNC2  (chan, 0);
	FUNC2  (chan, info->fix.line_length);
	FUNC2  (chan, info->var.xres_virtual);
	FUNC2  (chan, info->var.yres_virtual);
	FUNC2  (chan, FUNC10(fb->vma->addr));
	FUNC2  (chan, FUNC5(fb->vma->addr));
	FUNC1 (chan);

	return 0;
}