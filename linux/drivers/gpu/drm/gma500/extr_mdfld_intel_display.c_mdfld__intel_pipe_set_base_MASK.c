#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
struct psb_offset {int /*<<< orphan*/  surf; int /*<<< orphan*/  linoff; int /*<<< orphan*/  cntr; int /*<<< orphan*/  stride; } ;
struct gma_crtc {int pipe; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_framebuffer {int* pitches; TYPE_2__* format; int /*<<< orphan*/ * obj; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;
struct drm_crtc {TYPE_1__* primary; struct drm_device* dev; } ;
struct TYPE_6__ {unsigned long offset; } ;
struct TYPE_5__ {int* cpp; int depth; } ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 unsigned long DISPPLANE_15_16BPP ; 
 unsigned long DISPPLANE_16BPP ; 
 unsigned long DISPPLANE_32BPP_NO_ALPHA ; 
 unsigned long DISPPLANE_8BPP ; 
 unsigned long DISPPLANE_PIXFORMAT_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  globle_dev ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct drm_device*,int) ; 
 struct gma_crtc* FUNC8 (struct drm_crtc*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct drm_crtc *crtc, int x, int y,
				struct drm_framebuffer *old_fb)
{
	struct drm_device *dev = crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct drm_framebuffer *fb = crtc->primary->fb;
	struct gma_crtc *gma_crtc = FUNC8(crtc);
	int pipe = gma_crtc->pipe;
	const struct psb_offset *map = &dev_priv->regmap[pipe];
	unsigned long start, offset;
	u32 dspcntr;
	int ret;

	FUNC7(&globle_dev, dev, sizeof(struct drm_device));

	FUNC4(dev->dev, "pipe = 0x%x.\n", pipe);

	/* no fb bound */
	if (!fb) {
		FUNC4(dev->dev, "No FB bound\n");
		return 0;
	}

	ret = FUNC3(fb);
	if (ret)
		return ret;

	if (pipe > 2) {
		FUNC0("Illegal Pipe Number.\n");
		return -EINVAL;
	}

	if (!FUNC5(dev, true))
		return 0;

	start = FUNC9(fb->obj[0])->offset;
	offset = y * fb->pitches[0] + x * fb->format->cpp[0];

	FUNC2(map->stride, fb->pitches[0]);
	dspcntr = FUNC1(map->cntr);
	dspcntr &= ~DISPPLANE_PIXFORMAT_MASK;

	switch (fb->format->cpp[0] * 8) {
	case 8:
		dspcntr |= DISPPLANE_8BPP;
		break;
	case 16:
		if (fb->format->depth == 15)
			dspcntr |= DISPPLANE_15_16BPP;
		else
			dspcntr |= DISPPLANE_16BPP;
		break;
	case 24:
	case 32:
		dspcntr |= DISPPLANE_32BPP_NO_ALPHA;
		break;
	}
	FUNC2(map->cntr, dspcntr);

	FUNC4(dev->dev, "Writing base %08lX %08lX %d %d\n",
						start, offset, x, y);
	FUNC2(map->linoff, offset);
	FUNC1(map->linoff);
	FUNC2(map->surf, start);
	FUNC1(map->surf);

	FUNC6(dev);

	return 0;
}