#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct drm_crtc {TYPE_5__* primary; struct drm_device* dev; } ;
struct TYPE_6__ {struct drm_crtc crtc; } ;
struct mxsfb_drm_private {scalar_t__ base; TYPE_1__ pipe; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {TYPE_4__* state; } ;
struct TYPE_9__ {TYPE_3__* fb; } ;
struct TYPE_8__ {TYPE_2__* format; } ;
struct TYPE_7__ {int format; } ;

/* Variables and functions */
 int CTRL1_CUR_FRAME_DONE_IRQ ; 
 int CTRL1_CUR_FRAME_DONE_IRQ_EN ; 
 int FUNC0 (int) ; 
 int CTRL_BYPASS_COUNT ; 
 int CTRL_MASTER ; 
 int FUNC1 (int) ; 
#define  DRM_FORMAT_RGB565 129 
#define  DRM_FORMAT_XRGB8888 128 
 int EINVAL ; 
 scalar_t__ LCDC_CTRL ; 
 scalar_t__ LCDC_CTRL1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mxsfb_drm_private *mxsfb)
{
	struct drm_crtc *crtc = &mxsfb->pipe.crtc;
	struct drm_device *drm = crtc->dev;
	const u32 format = crtc->primary->state->fb->format->format;
	u32 ctrl, ctrl1;

	ctrl = CTRL_BYPASS_COUNT | CTRL_MASTER;

	/*
	 * WARNING: The bus width, CTRL_SET_BUS_WIDTH(), is configured to
	 * match the selected mode here. This differs from the original
	 * MXSFB driver, which had the option to configure the bus width
	 * to arbitrary value. This limitation should not pose an issue.
	 */

	/* CTRL1 contains IRQ config and status bits, preserve those. */
	ctrl1 = FUNC4(mxsfb->base + LCDC_CTRL1);
	ctrl1 &= CTRL1_CUR_FRAME_DONE_IRQ_EN | CTRL1_CUR_FRAME_DONE_IRQ;

	switch (format) {
	case DRM_FORMAT_RGB565:
		FUNC2(drm->dev, "Setting up RGB565 mode\n");
		ctrl |= FUNC1(0);
		ctrl1 |= FUNC0(0xf);
		break;
	case DRM_FORMAT_XRGB8888:
		FUNC2(drm->dev, "Setting up XRGB8888 mode\n");
		ctrl |= FUNC1(3);
		/* Do not use packed pixels = one pixel per word instead. */
		ctrl1 |= FUNC0(0x7);
		break;
	default:
		FUNC3(drm->dev, "Unhandled pixel format %08x\n", format);
		return -EINVAL;
	}

	FUNC5(ctrl1, mxsfb->base + LCDC_CTRL1);
	FUNC5(ctrl, mxsfb->base + LCDC_CTRL);

	return 0;
}