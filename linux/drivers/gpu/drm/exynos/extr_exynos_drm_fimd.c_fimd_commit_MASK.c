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
struct fimd_driver_data {int timing_base; int lcdblk_vt_shift; int lcdblk_bypass_shift; int lcdblk_mic_bypass_shift; scalar_t__ has_clksel; int /*<<< orphan*/  lcdblk_offset; scalar_t__ has_mic_bypass; scalar_t__ has_vidoutcon; scalar_t__ has_vtsel; } ;
struct fimd_context {int regs; int i80ifcon; int vidcon1; int vidout_con; int vidcon0; int clkdiv; struct fimd_driver_data* driver_data; int /*<<< orphan*/  dev; scalar_t__ sysreg; scalar_t__ i80_if; scalar_t__ suspended; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct exynos_drm_crtc {TYPE_2__ base; struct fimd_context* ctx; } ;
struct drm_display_mode {scalar_t__ htotal; scalar_t__ vtotal; int flags; int crtc_vsync_end; int crtc_vsync_start; int crtc_vtotal; int crtc_vdisplay; int crtc_hsync_end; int crtc_hsync_start; int crtc_htotal; int crtc_hdisplay; scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int DRM_MODE_FLAG_NHSYNC ; 
 int DRM_MODE_FLAG_NVSYNC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int I80IFEN_ENABLE ; 
 int VIDCON0 ; 
 int VIDCON0_CLKDIR ; 
 int VIDCON0_CLKSEL_LCD ; 
 int FUNC3 (int) ; 
 int VIDCON0_ENVID ; 
 int VIDCON0_ENVID_F ; 
 void* VIDCON1 ; 
 int VIDCON1_INV_HSYNC ; 
 int VIDCON1_INV_VSYNC ; 
 int VIDOUT_CON ; 
 void* VIDTCON0 ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 void* VIDTCON1 ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 void* VIDTCON2 ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct fimd_context*) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,void*) ; 

__attribute__((used)) static void FUNC17(struct exynos_drm_crtc *crtc)
{
	struct fimd_context *ctx = crtc->ctx;
	struct drm_display_mode *mode = &crtc->base.state->adjusted_mode;
	const struct fimd_driver_data *driver_data = ctx->driver_data;
	void *timing_base = ctx->regs + driver_data->timing_base;
	u32 val;

	if (ctx->suspended)
		return;

	/* nothing to do if we haven't set the mode yet */
	if (mode->htotal == 0 || mode->vtotal == 0)
		return;

	if (ctx->i80_if) {
		val = ctx->i80ifcon | I80IFEN_ENABLE;
		FUNC16(val, timing_base + FUNC1(0));

		/* disable auto frame rate */
		FUNC16(0, timing_base + FUNC2(0));

		/* set video type selection to I80 interface */
		if (driver_data->has_vtsel && ctx->sysreg &&
				FUNC15(ctx->sysreg,
					driver_data->lcdblk_offset,
					0x3 << driver_data->lcdblk_vt_shift,
					0x1 << driver_data->lcdblk_vt_shift)) {
			FUNC0(ctx->dev,
				      "Failed to update sysreg for I80 i/f.\n");
			return;
		}
	} else {
		int vsync_len, vbpd, vfpd, hsync_len, hbpd, hfpd;
		u32 vidcon1;

		/* setup polarity values */
		vidcon1 = ctx->vidcon1;
		if (mode->flags & DRM_MODE_FLAG_NVSYNC)
			vidcon1 |= VIDCON1_INV_VSYNC;
		if (mode->flags & DRM_MODE_FLAG_NHSYNC)
			vidcon1 |= VIDCON1_INV_HSYNC;
		FUNC16(vidcon1, ctx->regs + driver_data->timing_base + VIDCON1);

		/* setup vertical timing values. */
		vsync_len = mode->crtc_vsync_end - mode->crtc_vsync_start;
		vbpd = mode->crtc_vtotal - mode->crtc_vsync_end;
		vfpd = mode->crtc_vsync_start - mode->crtc_vdisplay;

		val = FUNC4(vbpd - 1) |
			FUNC5(vfpd - 1) |
			FUNC6(vsync_len - 1);
		FUNC16(val, ctx->regs + driver_data->timing_base + VIDTCON0);

		/* setup horizontal timing values.  */
		hsync_len = mode->crtc_hsync_end - mode->crtc_hsync_start;
		hbpd = mode->crtc_htotal - mode->crtc_hsync_end;
		hfpd = mode->crtc_hsync_start - mode->crtc_hdisplay;

		val = FUNC7(hbpd - 1) |
			FUNC8(hfpd - 1) |
			FUNC9(hsync_len - 1);
		FUNC16(val, ctx->regs + driver_data->timing_base + VIDTCON1);
	}

	if (driver_data->has_vidoutcon)
		FUNC16(ctx->vidout_con, timing_base + VIDOUT_CON);

	/* set bypass selection */
	if (ctx->sysreg && FUNC15(ctx->sysreg,
				driver_data->lcdblk_offset,
				0x1 << driver_data->lcdblk_bypass_shift,
				0x1 << driver_data->lcdblk_bypass_shift)) {
		FUNC0(ctx->dev,
			      "Failed to update sysreg for bypass setting.\n");
		return;
	}

	/* TODO: When MIC is enabled for display path, the lcdblk_mic_bypass
	 * bit should be cleared.
	 */
	if (driver_data->has_mic_bypass && ctx->sysreg &&
	    FUNC15(ctx->sysreg,
				driver_data->lcdblk_offset,
				0x1 << driver_data->lcdblk_mic_bypass_shift,
				0x1 << driver_data->lcdblk_mic_bypass_shift)) {
		FUNC0(ctx->dev,
			      "Failed to update sysreg for bypass mic.\n");
		return;
	}

	/* setup horizontal and vertical display size. */
	val = FUNC12(mode->vdisplay - 1) |
	       FUNC10(mode->hdisplay - 1) |
	       FUNC13(mode->vdisplay - 1) |
	       FUNC11(mode->hdisplay - 1);
	FUNC16(val, ctx->regs + driver_data->timing_base + VIDTCON2);

	FUNC14(ctx);

	/*
	 * fields of register with prefix '_F' would be updated
	 * at vsync(same as dma start)
	 */
	val = ctx->vidcon0;
	val |= VIDCON0_ENVID | VIDCON0_ENVID_F;

	if (ctx->driver_data->has_clksel)
		val |= VIDCON0_CLKSEL_LCD;

	if (ctx->clkdiv > 1)
		val |= FUNC3(ctx->clkdiv - 1) | VIDCON0_CLKDIR;

	FUNC16(val, ctx->regs + VIDCON0);
}