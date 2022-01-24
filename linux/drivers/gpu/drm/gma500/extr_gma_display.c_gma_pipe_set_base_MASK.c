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
typedef  unsigned long u32 ;
struct psb_offset {int /*<<< orphan*/  surf; int /*<<< orphan*/  base; int /*<<< orphan*/  cntr; int /*<<< orphan*/  stride; } ;
struct gtt_range {unsigned long offset; } ;
struct gma_crtc {int pipe; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_framebuffer {int* pitches; int /*<<< orphan*/ * obj; TYPE_2__* format; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;
struct drm_crtc {TYPE_1__* primary; struct drm_device* dev; } ;
struct TYPE_4__ {int* cpp; int depth; } ;
struct TYPE_3__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 unsigned long DISPPLANE_15_16BPP ; 
 unsigned long DISPPLANE_16BPP ; 
 unsigned long DISPPLANE_32BPP_NO_ALPHA ; 
 unsigned long DISPPLANE_8BPP ; 
 unsigned long DISPPLANE_PIXFORMAT_MASK ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct gtt_range*) ; 
 int /*<<< orphan*/  FUNC8 (struct gtt_range*) ; 
 struct gma_crtc* FUNC9 (struct drm_crtc*) ; 
 struct gtt_range* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct drm_crtc *crtc, int x, int y,
		      struct drm_framebuffer *old_fb)
{
	struct drm_device *dev = crtc->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct gma_crtc *gma_crtc = FUNC9(crtc);
	struct drm_framebuffer *fb = crtc->primary->fb;
	struct gtt_range *gtt;
	int pipe = gma_crtc->pipe;
	const struct psb_offset *map = &dev_priv->regmap[pipe];
	unsigned long start, offset;
	u32 dspcntr;
	int ret = 0;

	if (!FUNC5(dev, true))
		return 0;

	/* no fb bound */
	if (!fb) {
		FUNC4(dev->dev, "No FB bound\n");
		goto gma_pipe_cleaner;
	}

	gtt = FUNC10(fb->obj[0]);

	/* We are displaying this buffer, make sure it is actually loaded
	   into the GTT */
	ret = FUNC7(gtt);
	if (ret < 0)
		goto gma_pipe_set_base_exit;
	start = gtt->offset;
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
	default:
		FUNC4(dev->dev, "Unknown color depth\n");
		ret = -EINVAL;
		goto gma_pipe_set_base_exit;
	}
	FUNC2(map->cntr, dspcntr);

	FUNC3(dev->dev,
		"Writing base %08lX %08lX %d %d\n", start, offset, x, y);

	/* FIXME: Investigate whether this really is the base for psb and why
		  the linear offset is named base for the other chips. map->surf
		  should be the base and map->linoff the offset for all chips */
	if (FUNC0(dev)) {
		FUNC2(map->base, offset + start);
		FUNC1(map->base);
	} else {
		FUNC2(map->base, offset);
		FUNC1(map->base);
		FUNC2(map->surf, start);
		FUNC1(map->surf);
	}

gma_pipe_cleaner:
	/* If there was a previous display we can now unpin it */
	if (old_fb)
		FUNC8(FUNC10(old_fb->obj[0]));

gma_pipe_set_base_exit:
	FUNC6(dev);
	return ret;
}