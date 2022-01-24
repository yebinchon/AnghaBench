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
struct sun4i_tcon {int dclk_min_div; int dclk_max_div; int /*<<< orphan*/  regs; int /*<<< orphan*/  dclk; TYPE_1__* quirks; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {unsigned int crtc_htotal; unsigned int crtc_hsync_start; unsigned int crtc_vtotal; unsigned int crtc_vsync_start; unsigned int crtc_hsync_end; unsigned int crtc_vsync_end; int flags; } ;
struct drm_display_info {int bus_flags; } ;
struct drm_connector {struct drm_display_info display_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_channel_0; } ;

/* Variables and functions */
 int DRM_BUS_FLAG_DE_LOW ; 
 int DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE ; 
 int DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  SUN4I_TCON0_BASIC1_REG ; 
 int /*<<< orphan*/  SUN4I_TCON0_BASIC2_REG ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  SUN4I_TCON0_BASIC3_REG ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int SUN4I_TCON0_CTL_CLK_DELAY_MASK ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_REG ; 
 int SUN4I_TCON0_IO_POL_DE_NEGATIVE ; 
 int SUN4I_TCON0_IO_POL_HSYNC_POSITIVE ; 
 int /*<<< orphan*/  SUN4I_TCON0_IO_POL_REG ; 
 int SUN4I_TCON0_IO_POL_VSYNC_POSITIVE ; 
 int /*<<< orphan*/  SUN4I_TCON0_IO_TRI_REG ; 
 int SUN4I_TCON_GCTL_IOMAP_MASK ; 
 int SUN4I_TCON_GCTL_IOMAP_TCON0 ; 
 int /*<<< orphan*/  SUN4I_TCON_GCTL_REG ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sun4i_tcon*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC13 (struct sun4i_tcon*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_display_mode const*,int /*<<< orphan*/ ) ; 
 struct drm_connector* FUNC15 (struct drm_encoder const*) ; 

__attribute__((used)) static void FUNC16(struct sun4i_tcon *tcon,
				     const struct drm_encoder *encoder,
				     const struct drm_display_mode *mode)
{
	struct drm_connector *connector = FUNC15(encoder);
	const struct drm_display_info *info = &connector->display_info;
	unsigned int bp, hsync, vsync;
	u8 clk_delay;
	u32 val = 0;

	FUNC8(!tcon->quirks->has_channel_0);

	tcon->dclk_min_div = 6;
	tcon->dclk_max_div = 127;
	FUNC12(tcon, mode);

	/* Set dithering if needed */
	FUNC13(tcon, connector);

	/* Adjust clock delay */
	clk_delay = FUNC14(mode, 0);
	FUNC10(tcon->regs, SUN4I_TCON0_CTL_REG,
			   SUN4I_TCON0_CTL_CLK_DELAY_MASK,
			   FUNC7(clk_delay));

	/*
	 * This is called a backporch in the register documentation,
	 * but it really is the back porch + hsync
	 */
	bp = mode->crtc_htotal - mode->crtc_hsync_start;
	FUNC0("Setting horizontal total %d, backporch %d\n",
			 mode->crtc_htotal, bp);

	/* Set horizontal display timings */
	FUNC11(tcon->regs, SUN4I_TCON0_BASIC1_REG,
		     FUNC2(mode->crtc_htotal) |
		     FUNC1(bp));

	/*
	 * This is called a backporch in the register documentation,
	 * but it really is the back porch + hsync
	 */
	bp = mode->crtc_vtotal - mode->crtc_vsync_start;
	FUNC0("Setting vertical total %d, backporch %d\n",
			 mode->crtc_vtotal, bp);

	/* Set vertical display timings */
	FUNC11(tcon->regs, SUN4I_TCON0_BASIC2_REG,
		     FUNC4(mode->crtc_vtotal * 2) |
		     FUNC3(bp));

	/* Set Hsync and Vsync length */
	hsync = mode->crtc_hsync_end - mode->crtc_hsync_start;
	vsync = mode->crtc_vsync_end - mode->crtc_vsync_start;
	FUNC0("Setting HSYNC %d, VSYNC %d\n", hsync, vsync);
	FUNC11(tcon->regs, SUN4I_TCON0_BASIC3_REG,
		     FUNC6(vsync) |
		     FUNC5(hsync));

	/* Setup the polarity of the various signals */
	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
		val |= SUN4I_TCON0_IO_POL_HSYNC_POSITIVE;

	if (mode->flags & DRM_MODE_FLAG_PVSYNC)
		val |= SUN4I_TCON0_IO_POL_VSYNC_POSITIVE;

	if (info->bus_flags & DRM_BUS_FLAG_DE_LOW)
		val |= SUN4I_TCON0_IO_POL_DE_NEGATIVE;

	/*
	 * On A20 and similar SoCs, the only way to achieve Positive Edge
	 * (Rising Edge), is setting dclk clock phase to 2/3(240°).
	 * By default TCON works in Negative Edge(Falling Edge),
	 * this is why phase is set to 0 in that case.
	 * Unfortunately there's no way to logically invert dclk through
	 * IO_POL register.
	 * The only acceptable way to work, triple checked with scope,
	 * is using clock phase set to 0° for Negative Edge and set to 240°
	 * for Positive Edge.
	 * On A33 and similar SoCs there would be a 90° phase option,
	 * but it divides also dclk by 2.
	 * Following code is a way to avoid quirks all around TCON
	 * and DOTCLOCK drivers.
	 */
	if (info->bus_flags & DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE)
		FUNC9(tcon->dclk, 240);

	if (info->bus_flags & DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE)
		FUNC9(tcon->dclk, 0);

	FUNC10(tcon->regs, SUN4I_TCON0_IO_POL_REG,
			   SUN4I_TCON0_IO_POL_HSYNC_POSITIVE |
			   SUN4I_TCON0_IO_POL_VSYNC_POSITIVE |
			   SUN4I_TCON0_IO_POL_DE_NEGATIVE,
			   val);

	/* Map output pins to channel 0 */
	FUNC10(tcon->regs, SUN4I_TCON_GCTL_REG,
			   SUN4I_TCON_GCTL_IOMAP_MASK,
			   SUN4I_TCON_GCTL_IOMAP_TCON0);

	/* Enable the output on the pins */
	FUNC11(tcon->regs, SUN4I_TCON0_IO_TRI_REG, 0);
}