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
struct mipi_dsi_device {int lanes; } ;
struct drm_display_mode {unsigned int hsync_end; unsigned int hsync_start; unsigned int hdisplay; int htotal; unsigned int vsync_end; unsigned int vsync_start; unsigned int vdisplay; int vtotal; } ;
struct adv7511 {int /*<<< orphan*/  regmap_cec; struct drm_display_mode curr_mode; struct mipi_dsi_device* dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct adv7511 *adv)
{
	struct mipi_dsi_device *dsi = adv->dsi;
	struct drm_display_mode *mode = &adv->curr_mode;
	unsigned int hsw, hfp, hbp, vsw, vfp, vbp;
	u8 clock_div_by_lanes[] = { 6, 4, 3 };	/* 2, 3, 4 lanes */

	hsw = mode->hsync_end - mode->hsync_start;
	hfp = mode->hsync_start - mode->hdisplay;
	hbp = mode->htotal - mode->hsync_end;
	vsw = mode->vsync_end - mode->vsync_start;
	vfp = mode->vsync_start - mode->vdisplay;
	vbp = mode->vtotal - mode->vsync_end;

	/* set pixel clock divider mode */
	FUNC0(adv->regmap_cec, 0x16,
		     clock_div_by_lanes[dsi->lanes - 2] << 3);

	/* horizontal porch params */
	FUNC0(adv->regmap_cec, 0x28, mode->htotal >> 4);
	FUNC0(adv->regmap_cec, 0x29, (mode->htotal << 4) & 0xff);
	FUNC0(adv->regmap_cec, 0x2a, hsw >> 4);
	FUNC0(adv->regmap_cec, 0x2b, (hsw << 4) & 0xff);
	FUNC0(adv->regmap_cec, 0x2c, hfp >> 4);
	FUNC0(adv->regmap_cec, 0x2d, (hfp << 4) & 0xff);
	FUNC0(adv->regmap_cec, 0x2e, hbp >> 4);
	FUNC0(adv->regmap_cec, 0x2f, (hbp << 4) & 0xff);

	/* vertical porch params */
	FUNC0(adv->regmap_cec, 0x30, mode->vtotal >> 4);
	FUNC0(adv->regmap_cec, 0x31, (mode->vtotal << 4) & 0xff);
	FUNC0(adv->regmap_cec, 0x32, vsw >> 4);
	FUNC0(adv->regmap_cec, 0x33, (vsw << 4) & 0xff);
	FUNC0(adv->regmap_cec, 0x34, vfp >> 4);
	FUNC0(adv->regmap_cec, 0x35, (vfp << 4) & 0xff);
	FUNC0(adv->regmap_cec, 0x36, vbp >> 4);
	FUNC0(adv->regmap_cec, 0x37, (vbp << 4) & 0xff);
}