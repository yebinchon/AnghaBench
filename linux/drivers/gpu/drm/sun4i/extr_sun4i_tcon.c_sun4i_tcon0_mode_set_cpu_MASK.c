#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct sun6i_dsi {struct mipi_dsi_device* device; } ;
struct sun4i_tcon {int /*<<< orphan*/  regs; void* dclk_max_div; void* dclk_min_div; } ;
struct mipi_dsi_device {int lanes; int /*<<< orphan*/  format; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int htotal; int crtc_vtotal; int crtc_vdisplay; int crtc_htotal; int crtc_clock; int /*<<< orphan*/  vdisplay; scalar_t__ hdisplay; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SUN4I_TCON0_CPU_IF_MODE_DSI ; 
 int /*<<< orphan*/  SUN4I_TCON0_CPU_IF_REG ; 
 int SUN4I_TCON0_CPU_IF_TRI_EN ; 
 int SUN4I_TCON0_CPU_IF_TRI_FIFO_EN ; 
 int SUN4I_TCON0_CPU_IF_TRI_FIFO_FLUSH ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SUN4I_TCON0_CPU_TRI0_REG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_TCON0_CPU_TRI1_REG ; 
 int /*<<< orphan*/  SUN4I_TCON0_CPU_TRI2_REG ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_IF_8080 ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_IF_MASK ; 
 int /*<<< orphan*/  SUN4I_TCON0_CTL_REG ; 
 int /*<<< orphan*/  SUN4I_TCON0_DCLK_REG ; 
 int /*<<< orphan*/  SUN4I_TCON0_IO_TRI_REG ; 
 int SUN4I_TCON_ECC_FIFO_EN ; 
 int /*<<< orphan*/  SUN4I_TCON_ECC_FIFO_REG ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  SUN4I_TCON_SAFE_PERIOD_REG ; 
 void* SUN6I_DSI_TCON_DIV ; 
 struct sun6i_dsi* FUNC8 (struct drm_encoder const*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sun4i_tcon*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC14 (struct sun4i_tcon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_encoder const*) ; 

__attribute__((used)) static void FUNC16(struct sun4i_tcon *tcon,
				     const struct drm_encoder *encoder,
				     const struct drm_display_mode *mode)
{
	/* TODO support normal CPU interface modes */
	struct sun6i_dsi *dsi = FUNC8(encoder);
	struct mipi_dsi_device *device = dsi->device;
	u8 bpp = FUNC9(device->format);
	u8 lanes = device->lanes;
	u32 block_space, start_delay;
	u32 tcon_div;

	tcon->dclk_min_div = SUN6I_DSI_TCON_DIV;
	tcon->dclk_max_div = SUN6I_DSI_TCON_DIV;

	FUNC13(tcon, mode);

	/* Set dithering if needed */
	FUNC14(tcon, FUNC15(encoder));

	FUNC11(tcon->regs, SUN4I_TCON0_CTL_REG,
			   SUN4I_TCON0_CTL_IF_MASK,
			   SUN4I_TCON0_CTL_IF_8080);

	FUNC12(tcon->regs, SUN4I_TCON_ECC_FIFO_REG,
		     SUN4I_TCON_ECC_FIFO_EN);

	FUNC12(tcon->regs, SUN4I_TCON0_CPU_IF_REG,
		     SUN4I_TCON0_CPU_IF_MODE_DSI |
		     SUN4I_TCON0_CPU_IF_TRI_FIFO_FLUSH |
		     SUN4I_TCON0_CPU_IF_TRI_FIFO_EN |
		     SUN4I_TCON0_CPU_IF_TRI_EN);

	/*
	 * This looks suspicious, but it works...
	 *
	 * The datasheet says that this should be set higher than 20 *
	 * pixel cycle, but it's not clear what a pixel cycle is.
	 */
	FUNC10(tcon->regs, SUN4I_TCON0_DCLK_REG, &tcon_div);
	tcon_div &= FUNC0(6, 0);
	block_space = mode->htotal * bpp / (tcon_div * lanes);
	block_space -= mode->hdisplay + 40;

	FUNC12(tcon->regs, SUN4I_TCON0_CPU_TRI0_REG,
		     FUNC2(block_space) |
		     FUNC1(mode->hdisplay));

	FUNC12(tcon->regs, SUN4I_TCON0_CPU_TRI1_REG,
		     FUNC3(mode->vdisplay));

	start_delay = (mode->crtc_vtotal - mode->crtc_vdisplay - 10 - 1);
	start_delay = start_delay * mode->crtc_htotal * 149;
	start_delay = start_delay / (mode->crtc_clock / 1000) / 8;
	FUNC12(tcon->regs, SUN4I_TCON0_CPU_TRI2_REG,
		     FUNC5(10) |
		     FUNC4(start_delay));

	/*
	 * The Allwinner BSP has a comment that the period should be
	 * the display clock * 15, but uses an hardcoded 3000...
	 */
	FUNC12(tcon->regs, SUN4I_TCON_SAFE_PERIOD_REG,
		     FUNC7(3000) |
		     FUNC6(3));

	/* Enable the output on the pins */
	FUNC12(tcon->regs, SUN4I_TCON0_IO_TRI_REG,
		     0xe0000000);
}