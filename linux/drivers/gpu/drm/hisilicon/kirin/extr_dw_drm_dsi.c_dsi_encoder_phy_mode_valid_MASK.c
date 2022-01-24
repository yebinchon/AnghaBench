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
typedef  int u32 ;
struct mipi_phy_params {int dummy; } ;
struct dw_dsi {int lanes; int /*<<< orphan*/  format; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
typedef  int /*<<< orphan*/  phy ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MODE_BAD ; 
 int MODE_OK ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode const*) ; 
 int FUNC2 (int,struct mipi_phy_params*) ; 
 struct dw_dsi* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct mipi_phy_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_mode_status FUNC6(
					struct drm_encoder *encoder,
					const struct drm_display_mode *mode)
{
	struct dw_dsi *dsi = FUNC3(encoder);
	struct mipi_phy_params phy;
	u32 bpp = FUNC5(dsi->format);
	u32 req_kHz, act_kHz, lane_byte_clk_kHz;

	/* Calculate the lane byte clk using the adjusted mode clk */
	FUNC4(&phy, 0, sizeof(phy));
	req_kHz = mode->clock * bpp / dsi->lanes;
	act_kHz = FUNC2(req_kHz, &phy);
	lane_byte_clk_kHz = act_kHz / 8;

	FUNC0("Checking mode %ix%i-%i@%i clock: %i...",
			mode->hdisplay, mode->vdisplay, bpp,
			FUNC1(mode), mode->clock);

	/*
	 * Make sure the adjusted mode clock and the lane byte clk
	 * have a common denominator base frequency
	 */
	if (mode->clock/dsi->lanes == lane_byte_clk_kHz/3) {
		FUNC0("OK!\n");
		return MODE_OK;
	}

	FUNC0("BAD!\n");
	return MODE_BAD;
}