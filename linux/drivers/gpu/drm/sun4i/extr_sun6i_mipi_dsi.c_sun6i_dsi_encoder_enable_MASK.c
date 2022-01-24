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
struct phy_configure_opts_mipi_dphy {int dummy; } ;
union phy_configure_opts {struct phy_configure_opts_mipi_dphy mipi_dphy; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  u16 ;
struct sun6i_dsi {int /*<<< orphan*/  panel; int /*<<< orphan*/  dphy; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev; struct mipi_dsi_device* device; } ;
struct mipi_dsi_device {int /*<<< orphan*/  lanes; int /*<<< orphan*/  format; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSI_START_HSC ; 
 int /*<<< orphan*/  DSI_START_HSD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_MODE_MIPI_DPHY ; 
 int /*<<< orphan*/  SUN6I_DSI_BASIC_CTL1_REG ; 
 int SUN6I_DSI_BASIC_CTL1_VIDEO_FILL ; 
 int SUN6I_DSI_BASIC_CTL1_VIDEO_MODE ; 
 int SUN6I_DSI_BASIC_CTL1_VIDEO_PRECISION ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sun6i_dsi* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,union phy_configure_opts*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct phy_configure_opts_mipi_dphy*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sun6i_dsi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC15 (struct sun6i_dsi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC16 (struct sun6i_dsi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC17 (struct sun6i_dsi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC18 (struct sun6i_dsi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC19 (struct sun6i_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static void FUNC21(struct drm_encoder *encoder)
{
	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
	struct sun6i_dsi *dsi = FUNC5(encoder);
	struct mipi_dsi_device *device = dsi->device;
	union phy_configure_opts opts = { 0 };
	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
	u16 delay;

	FUNC0("Enabling DSI output\n");

	FUNC12(dsi->dev);

	delay = FUNC14(dsi, mode);
	FUNC13(dsi->regs, SUN6I_DSI_BASIC_CTL1_REG,
		     FUNC2(delay) |
		     SUN6I_DSI_BASIC_CTL1_VIDEO_FILL |
		     SUN6I_DSI_BASIC_CTL1_VIDEO_PRECISION |
		     SUN6I_DSI_BASIC_CTL1_VIDEO_MODE);

	FUNC15(dsi, mode);
	FUNC17(dsi, mode);
	FUNC16(dsi, mode);
	FUNC18(dsi, mode);

	FUNC8(dsi->dphy);

	FUNC9(mode->clock * 1000,
					 FUNC6(device->format),
					 device->lanes, cfg);

	FUNC11(dsi->dphy, PHY_MODE_MIPI_DPHY);
	FUNC7(dsi->dphy, &opts);
	FUNC10(dsi->dphy);

	if (!FUNC1(dsi->panel))
		FUNC4(dsi->panel);

	/*
	 * FIXME: This should be moved after the switch to HS mode.
	 *
	 * Unfortunately, once in HS mode, it seems like we're not
	 * able to send DCS commands anymore, which would prevent any
	 * panel to send any DCS command as part as their enable
	 * method, which is quite common.
	 *
	 * I haven't seen any artifact due to that sub-optimal
	 * ordering on the panels I've tested it with, so I guess this
	 * will do for now, until that IP is better understood.
	 */
	if (!FUNC1(dsi->panel))
		FUNC3(dsi->panel);

	FUNC19(dsi, DSI_START_HSC);

	FUNC20(1000);

	FUNC19(dsi, DSI_START_HSD);
}