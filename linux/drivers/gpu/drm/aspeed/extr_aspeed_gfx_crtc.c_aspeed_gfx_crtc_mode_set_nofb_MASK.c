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
typedef  int u32 ;
struct drm_display_mode {int crtc_clock; int flags; int hdisplay; int /*<<< orphan*/  vsync_end; int /*<<< orphan*/  vsync_start; scalar_t__ vdisplay; scalar_t__ vtotal; int /*<<< orphan*/  hsync_end; scalar_t__ hsync_start; scalar_t__ htotal; } ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_6__ {TYPE_2__ crtc; } ;
struct aspeed_gfx {scalar_t__ base; int /*<<< orphan*/  pixel_clk; TYPE_3__ pipe; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 scalar_t__ CRT_CTRL1 ; 
 int CRT_CTRL_HSYNC_NEGATIVE ; 
 int CRT_CTRL_INTERLACED ; 
 int CRT_CTRL_VSYNC_NEGATIVE ; 
 int FUNC0 (int) ; 
 scalar_t__ CRT_HORIZ0 ; 
 scalar_t__ CRT_HORIZ1 ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ CRT_OFFSET ; 
 int FUNC5 (int) ; 
 scalar_t__ CRT_THROD ; 
 scalar_t__ CRT_VERT0 ; 
 scalar_t__ CRT_VERT1 ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int G5_CRT_THROD_VAL ; 
 int FUNC10 (struct aspeed_gfx*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct aspeed_gfx *priv)
{
	struct drm_display_mode *m = &priv->pipe.crtc.state->adjusted_mode;
	u32 ctrl1, d_offset, t_count, bpp;
	int err;

	err = FUNC10(priv, &bpp);
	if (err)
		return;

#if 0
	/* TODO: we have only been able to test with the 40MHz USB clock. The
	 * clock is fixed, so we cannot adjust it here. */
	clk_set_rate(priv->pixel_clk, m->crtc_clock * 1000);
#endif

	ctrl1 = FUNC12(priv->base + CRT_CTRL1);
	ctrl1 &= ~(CRT_CTRL_INTERLACED |
			CRT_CTRL_HSYNC_NEGATIVE |
			CRT_CTRL_VSYNC_NEGATIVE);

	if (m->flags & DRM_MODE_FLAG_INTERLACE)
		ctrl1 |= CRT_CTRL_INTERLACED;

	if (!(m->flags & DRM_MODE_FLAG_PHSYNC))
		ctrl1 |= CRT_CTRL_HSYNC_NEGATIVE;

	if (!(m->flags & DRM_MODE_FLAG_PVSYNC))
		ctrl1 |= CRT_CTRL_VSYNC_NEGATIVE;

	FUNC13(ctrl1, priv->base + CRT_CTRL1);

	/* Horizontal timing */
	FUNC13(FUNC4(m->htotal - 1) | FUNC1(m->hdisplay - 1),
			priv->base + CRT_HORIZ0);
	FUNC13(FUNC3(m->hsync_start - 1) | FUNC2(m->hsync_end),
			priv->base + CRT_HORIZ1);


	/* Vertical timing */
	FUNC13(FUNC9(m->vtotal - 1) | FUNC6(m->vdisplay - 1),
			priv->base + CRT_VERT0);
	FUNC13(FUNC8(m->vsync_start) | FUNC7(m->vsync_end),
			priv->base + CRT_VERT1);

	/*
	 * Display Offset: address difference between consecutive scan lines
	 * Terminal Count: memory size of one scan line
	 */
	d_offset = m->hdisplay * bpp / 8;
	t_count = (m->hdisplay * bpp + 127) / 128;
	FUNC13(FUNC0(d_offset) | FUNC5(t_count),
			priv->base + CRT_OFFSET);

	/*
	 * Threshold: FIFO thresholds of refill and stop (16 byte chunks
	 * per line, rounded up)
	 */
	FUNC13(G5_CRT_THROD_VAL, priv->base + CRT_THROD);
}