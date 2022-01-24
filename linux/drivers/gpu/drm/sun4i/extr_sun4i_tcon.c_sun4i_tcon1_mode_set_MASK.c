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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sun4i_tcon {int /*<<< orphan*/  regs; int /*<<< orphan*/  sclk1; TYPE_1__* quirks; } ;
struct drm_display_mode {int crtc_clock; int flags; unsigned int crtc_htotal; unsigned int crtc_hsync_start; unsigned int htotal; unsigned int crtc_vtotal; unsigned int crtc_vsync_start; unsigned int vtotal; unsigned int crtc_hsync_end; unsigned int crtc_vsync_end; int /*<<< orphan*/  crtc_vdisplay; int /*<<< orphan*/  crtc_hdisplay; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_channel_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  SUN4I_TCON1_BASIC0_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TCON1_BASIC1_REG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TCON1_BASIC2_REG ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  SUN4I_TCON1_BASIC3_REG ; 
 int /*<<< orphan*/  SUN4I_TCON1_BASIC4_REG ; 
 int FUNC9 (unsigned int) ; 
 int FUNC10 (unsigned int) ; 
 int FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  SUN4I_TCON1_BASIC5_REG ; 
 int FUNC12 (unsigned int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUN4I_TCON1_CTL_CLK_DELAY_MASK ; 
 scalar_t__ SUN4I_TCON1_CTL_INTERLACE_ENABLE ; 
 int /*<<< orphan*/  SUN4I_TCON1_CTL_REG ; 
 scalar_t__ SUN4I_TCON_GCTL_IOMAP_MASK ; 
 scalar_t__ SUN4I_TCON_GCTL_IOMAP_TCON1 ; 
 int /*<<< orphan*/  SUN4I_TCON_GCTL_REG ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_display_mode const*,int) ; 

__attribute__((used)) static void FUNC19(struct sun4i_tcon *tcon,
				 const struct drm_display_mode *mode)
{
	unsigned int bp, hsync, vsync, vtotal;
	u8 clk_delay;
	u32 val;

	FUNC14(!tcon->quirks->has_channel_1);

	/* Configure the dot clock */
	FUNC15(tcon->sclk1, mode->crtc_clock * 1000);

	/* Adjust clock delay */
	clk_delay = FUNC18(mode, 1);
	FUNC16(tcon->regs, SUN4I_TCON1_CTL_REG,
			   SUN4I_TCON1_CTL_CLK_DELAY_MASK,
			   FUNC13(clk_delay));

	/* Set interlaced mode */
	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
		val = SUN4I_TCON1_CTL_INTERLACE_ENABLE;
	else
		val = 0;
	FUNC16(tcon->regs, SUN4I_TCON1_CTL_REG,
			   SUN4I_TCON1_CTL_INTERLACE_ENABLE,
			   val);

	/* Set the input resolution */
	FUNC17(tcon->regs, SUN4I_TCON1_BASIC0_REG,
		     FUNC1(mode->crtc_hdisplay) |
		     FUNC2(mode->crtc_vdisplay));

	/* Set the upscaling resolution */
	FUNC17(tcon->regs, SUN4I_TCON1_BASIC1_REG,
		     FUNC3(mode->crtc_hdisplay) |
		     FUNC4(mode->crtc_vdisplay));

	/* Set the output resolution */
	FUNC17(tcon->regs, SUN4I_TCON1_BASIC2_REG,
		     FUNC5(mode->crtc_hdisplay) |
		     FUNC6(mode->crtc_vdisplay));

	/* Set horizontal display timings */
	bp = mode->crtc_htotal - mode->crtc_hsync_start;
	FUNC0("Setting horizontal total %d, backporch %d\n",
			 mode->htotal, bp);
	FUNC17(tcon->regs, SUN4I_TCON1_BASIC3_REG,
		     FUNC8(mode->crtc_htotal) |
		     FUNC7(bp));

	bp = mode->crtc_vtotal - mode->crtc_vsync_start;
	FUNC0("Setting vertical total %d, backporch %d\n",
			 mode->crtc_vtotal, bp);

	/*
	 * The vertical resolution needs to be doubled in all
	 * cases. We could use crtc_vtotal and always multiply by two,
	 * but that leads to a rounding error in interlace when vtotal
	 * is odd.
	 *
	 * This happens with TV's PAL for example, where vtotal will
	 * be 625, crtc_vtotal 312, and thus crtc_vtotal * 2 will be
	 * 624, which apparently confuses the hardware.
	 *
	 * To work around this, we will always use vtotal, and
	 * multiply by two only if we're not in interlace.
	 */
	vtotal = mode->vtotal;
	if (!(mode->flags & DRM_MODE_FLAG_INTERLACE))
		vtotal = vtotal * 2;

	/* Set vertical display timings */
	FUNC17(tcon->regs, SUN4I_TCON1_BASIC4_REG,
		     FUNC10(vtotal) |
		     FUNC9(bp));

	/* Set Hsync and Vsync length */
	hsync = mode->crtc_hsync_end - mode->crtc_hsync_start;
	vsync = mode->crtc_vsync_end - mode->crtc_vsync_start;
	FUNC0("Setting HSYNC %d, VSYNC %d\n", hsync, vsync);
	FUNC17(tcon->regs, SUN4I_TCON1_BASIC5_REG,
		     FUNC12(vsync) |
		     FUNC11(hsync));

	/* Map output pins to channel 1 */
	FUNC16(tcon->regs, SUN4I_TCON_GCTL_REG,
			   SUN4I_TCON_GCTL_IOMAP_MASK,
			   SUN4I_TCON_GCTL_IOMAP_TCON1);
}