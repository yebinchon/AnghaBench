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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_output {scalar_t__ panel; } ;
struct tegra_dsi_state {int period; int /*<<< orphan*/  timing; int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  bclk; } ;
struct tegra_dsi {int dummy; } ;
struct tegra_dc {int /*<<< orphan*/  pipe; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_DISP_DISP_WIN_OPTIONS ; 
 int /*<<< orphan*/  DSI_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct tegra_output* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dc*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_dsi*,int /*<<< orphan*/ ,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_dsi*) ; 
 struct tegra_dsi_state* FUNC8 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_dsi*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct tegra_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_dsi* FUNC12 (struct tegra_output*) ; 
 struct tegra_dc* FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC14(struct drm_encoder *encoder)
{
	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
	struct tegra_output *output = FUNC2(encoder);
	struct tegra_dc *dc = FUNC13(encoder->crtc);
	struct tegra_dsi *dsi = FUNC12(output);
	struct tegra_dsi_state *state;
	u32 value;

	FUNC9(dsi);

	state = FUNC8(dsi);

	FUNC11(dsi, state->bclk, state->vrefresh);

	/*
	 * The D-PHY timing fields are expressed in byte-clock cycles, so
	 * multiply the period by 8.
	 */
	FUNC10(dsi, state->period * 8, &state->timing);

	if (output->panel)
		FUNC1(output->panel);

	FUNC6(dsi, dc->pipe, mode);

	/* enable display controller */
	value = FUNC4(dc, DC_DISP_DISP_WIN_OPTIONS);
	value |= DSI_ENABLE;
	FUNC5(dc, value, DC_DISP_DISP_WIN_OPTIONS);

	FUNC3(dc);

	/* enable DSI controller */
	FUNC7(dsi);

	if (output->panel)
		FUNC0(output->panel);
}