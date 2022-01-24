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
typedef  int u32 ;
struct sun4i_tcon {int dclk_min_div; int dclk_max_div; int /*<<< orphan*/  regs; TYPE_1__* quirks; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {unsigned int crtc_htotal; unsigned int crtc_hsync_start; unsigned int crtc_vtotal; unsigned int crtc_vsync_start; int flags; int /*<<< orphan*/  htotal; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_channel_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TCON0_BASIC1_REG ; 
 int /*<<< orphan*/  SUN4I_TCON0_BASIC2_REG ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_CLK_DELAY_MASK ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_REG ; 
 int SUN4I_TCON0_IO_POL_HSYNC_POSITIVE ; 
 int /*<<< orphan*/  SUN4I_TCON0_IO_POL_REG ; 
 int SUN4I_TCON0_IO_POL_VSYNC_POSITIVE ; 
 int /*<<< orphan*/  SUN4I_TCON0_IO_TRI_REG ; 
 int SUN4I_TCON0_LVDS_IF_BITWIDTH_18BITS ; 
 int SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS ; 
 int SUN4I_TCON0_LVDS_IF_CLK_POL_NORMAL ; 
 int SUN4I_TCON0_LVDS_IF_CLK_SEL_TCON0 ; 
 int SUN4I_TCON0_LVDS_IF_DATA_POL_NORMAL ; 
 int /*<<< orphan*/  SUN4I_TCON0_LVDS_IF_REG ; 
 int /*<<< orphan*/  SUN4I_TCON_GCTL_IOMAP_MASK ; 
 int /*<<< orphan*/  SUN4I_TCON_GCTL_IOMAP_TCON0 ; 
 int /*<<< orphan*/  SUN4I_TCON_GCTL_REG ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sun4i_tcon*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC10 (struct sun4i_tcon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_display_mode const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_encoder const*) ; 
 int FUNC13 (struct drm_encoder const*) ; 

__attribute__((used)) static void FUNC14(struct sun4i_tcon *tcon,
				      const struct drm_encoder *encoder,
				      const struct drm_display_mode *mode)
{
	unsigned int bp;
	u8 clk_delay;
	u32 reg, val = 0;

	FUNC6(!tcon->quirks->has_channel_0);

	tcon->dclk_min_div = 7;
	tcon->dclk_max_div = 7;
	FUNC9(tcon, mode);

	/* Set dithering if needed */
	FUNC10(tcon, FUNC12(encoder));

	/* Adjust clock delay */
	clk_delay = FUNC11(mode, 0);
	FUNC7(tcon->regs, SUN4I_TCON0_CTL_REG,
			   SUN4I_TCON0_CTL_CLK_DELAY_MASK,
			   FUNC5(clk_delay));

	/*
	 * This is called a backporch in the register documentation,
	 * but it really is the back porch + hsync
	 */
	bp = mode->crtc_htotal - mode->crtc_hsync_start;
	FUNC0("Setting horizontal total %d, backporch %d\n",
			 mode->crtc_htotal, bp);

	/* Set horizontal display timings */
	FUNC8(tcon->regs, SUN4I_TCON0_BASIC1_REG,
		     FUNC2(mode->htotal) |
		     FUNC1(bp));

	/*
	 * This is called a backporch in the register documentation,
	 * but it really is the back porch + hsync
	 */
	bp = mode->crtc_vtotal - mode->crtc_vsync_start;
	FUNC0("Setting vertical total %d, backporch %d\n",
			 mode->crtc_vtotal, bp);

	/* Set vertical display timings */
	FUNC8(tcon->regs, SUN4I_TCON0_BASIC2_REG,
		     FUNC4(mode->crtc_vtotal * 2) |
		     FUNC3(bp));

	reg = SUN4I_TCON0_LVDS_IF_CLK_SEL_TCON0 |
		SUN4I_TCON0_LVDS_IF_DATA_POL_NORMAL |
		SUN4I_TCON0_LVDS_IF_CLK_POL_NORMAL;
	if (FUNC13(encoder) == 24)
		reg |= SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS;
	else
		reg |= SUN4I_TCON0_LVDS_IF_BITWIDTH_18BITS;

	FUNC8(tcon->regs, SUN4I_TCON0_LVDS_IF_REG, reg);

	/* Setup the polarity of the various signals */
	if (!(mode->flags & DRM_MODE_FLAG_PHSYNC))
		val |= SUN4I_TCON0_IO_POL_HSYNC_POSITIVE;

	if (!(mode->flags & DRM_MODE_FLAG_PVSYNC))
		val |= SUN4I_TCON0_IO_POL_VSYNC_POSITIVE;

	FUNC8(tcon->regs, SUN4I_TCON0_IO_POL_REG, val);

	/* Map output pins to channel 0 */
	FUNC7(tcon->regs, SUN4I_TCON_GCTL_REG,
			   SUN4I_TCON_GCTL_IOMAP_MASK,
			   SUN4I_TCON_GCTL_IOMAP_TCON0);

	/* Enable the output on the pins */
	FUNC8(tcon->regs, SUN4I_TCON0_IO_TRI_REG, 0xe0000000);
}