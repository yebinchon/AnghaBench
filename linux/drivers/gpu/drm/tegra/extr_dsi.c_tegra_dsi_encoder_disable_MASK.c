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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_output {scalar_t__ panel; } ;
struct tegra_dsi {int /*<<< orphan*/  dev; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_DISP_DISP_WIN_OPTIONS ; 
 int /*<<< orphan*/  DSI_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct tegra_output* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_dc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_dsi*) ; 
 int FUNC11 (struct tegra_dsi*,int) ; 
 struct tegra_dsi* FUNC12 (struct tegra_output*) ; 
 struct tegra_dc* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct drm_encoder *encoder)
{
	struct tegra_output *output = FUNC3(encoder);
	struct tegra_dc *dc = FUNC13(encoder->crtc);
	struct tegra_dsi *dsi = FUNC12(output);
	u32 value;
	int err;

	if (output->panel)
		FUNC1(output->panel);

	FUNC10(dsi);

	/*
	 * The following accesses registers of the display controller, so make
	 * sure it's only executed when the output is attached to one.
	 */
	if (dc) {
		value = FUNC5(dc, DC_DISP_DISP_WIN_OPTIONS);
		value &= ~DSI_ENABLE;
		FUNC6(dc, value, DC_DISP_DISP_WIN_OPTIONS);

		FUNC4(dc);
	}

	err = FUNC11(dsi, 100);
	if (err < 0)
		FUNC0(dsi->dev, "failed to idle DSI: %d\n", err);

	FUNC8(dsi);

	if (output->panel)
		FUNC2(output->panel);

	FUNC7(dsi);

	FUNC9(dsi);
}