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
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct exynos_drm_crtc {TYPE_2__ base; struct decon_context* ctx; } ;
struct drm_display_mode {scalar_t__ htotal; scalar_t__ vtotal; int crtc_vsync_end; int crtc_vsync_start; int crtc_vtotal; int crtc_vdisplay; int crtc_hsync_end; int crtc_hsync_start; int crtc_htotal; int crtc_hdisplay; int vdisplay; scalar_t__ hdisplay; } ;
struct decon_context {scalar_t__ regs; int /*<<< orphan*/  i80_if; scalar_t__ suspended; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 scalar_t__ DECON_UPDATE ; 
 int DECON_UPDATE_STANDALONE_F ; 
 scalar_t__ LINECNT_OP_THRESHOLD ; 
 scalar_t__ VCLKCON1 ; 
 int FUNC0 (int) ; 
 scalar_t__ VCLKCON2 ; 
 scalar_t__ VIDCON0 ; 
 int VIDCON0_ENVID ; 
 int VIDCON0_ENVID_F ; 
 scalar_t__ VIDTCON0 ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ VIDTCON1 ; 
 int FUNC3 (int) ; 
 scalar_t__ VIDTCON2 ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ VIDTCON3 ; 
 int FUNC6 (int) ; 
 scalar_t__ VIDTCON4 ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (int) ; 
 int FUNC9 (struct decon_context*,struct drm_display_mode*) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct exynos_drm_crtc *crtc)
{
	struct decon_context *ctx = crtc->ctx;
	struct drm_display_mode *mode = &crtc->base.state->adjusted_mode;
	u32 val, clkdiv;

	if (ctx->suspended)
		return;

	/* nothing to do if we haven't set the mode yet */
	if (mode->htotal == 0 || mode->vtotal == 0)
		return;

	if (!ctx->i80_if) {
		int vsync_len, vbpd, vfpd, hsync_len, hbpd, hfpd;
	      /* setup vertical timing values. */
		vsync_len = mode->crtc_vsync_end - mode->crtc_vsync_start;
		vbpd = mode->crtc_vtotal - mode->crtc_vsync_end;
		vfpd = mode->crtc_vsync_start - mode->crtc_vdisplay;

		val = FUNC1(vbpd - 1) | FUNC2(vfpd - 1);
		FUNC11(val, ctx->regs + VIDTCON0);

		val = FUNC3(vsync_len - 1);
		FUNC11(val, ctx->regs + VIDTCON1);

		/* setup horizontal timing values.  */
		hsync_len = mode->crtc_hsync_end - mode->crtc_hsync_start;
		hbpd = mode->crtc_htotal - mode->crtc_hsync_end;
		hfpd = mode->crtc_hsync_start - mode->crtc_hdisplay;

		/* setup horizontal timing values.  */
		val = FUNC4(hbpd - 1) | FUNC5(hfpd - 1);
		FUNC11(val, ctx->regs + VIDTCON2);

		val = FUNC6(hsync_len - 1);
		FUNC11(val, ctx->regs + VIDTCON3);
	}

	/* setup horizontal and vertical display size. */
	val = FUNC8(mode->vdisplay - 1) |
	       FUNC7(mode->hdisplay - 1);
	FUNC11(val, ctx->regs + VIDTCON4);

	FUNC11(mode->vdisplay - 1, ctx->regs + LINECNT_OP_THRESHOLD);

	/*
	 * fields of register with prefix '_F' would be updated
	 * at vsync(same as dma start)
	 */
	val = VIDCON0_ENVID | VIDCON0_ENVID_F;
	FUNC11(val, ctx->regs + VIDCON0);

	clkdiv = FUNC9(ctx, mode);
	if (clkdiv > 1) {
		val = FUNC0(clkdiv - 1);
		FUNC11(val, ctx->regs + VCLKCON1);
		FUNC11(val, ctx->regs + VCLKCON2);
	}

	val = FUNC10(ctx->regs + DECON_UPDATE);
	val |= DECON_UPDATE_STANDALONE_F;
	FUNC11(val, ctx->regs + DECON_UPDATE);
}