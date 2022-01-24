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
struct tegra_output {int /*<<< orphan*/  dev; } ;
struct tegra_dsi_state {int pclk; int mul; int div; int lanes; int bclk; int /*<<< orphan*/  period; int /*<<< orphan*/  timing; int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  format; } ;
struct tegra_dsi {int /*<<< orphan*/  clk_parent; int /*<<< orphan*/  dev; int /*<<< orphan*/  format; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;
struct drm_connector_state {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 unsigned long USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct tegra_output* FUNC5 (struct drm_encoder*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tegra_dc*,struct drm_crtc_state*,int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct tegra_dsi*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int*,int*) ; 
 struct tegra_dsi* FUNC12 (struct tegra_output*) ; 
 struct tegra_dsi_state* FUNC13 (struct drm_connector_state*) ; 
 struct tegra_dc* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct drm_encoder *encoder,
			       struct drm_crtc_state *crtc_state,
			       struct drm_connector_state *conn_state)
{
	struct tegra_output *output = FUNC5(encoder);
	struct tegra_dsi_state *state = FUNC13(conn_state);
	struct tegra_dc *dc = FUNC14(conn_state->crtc);
	struct tegra_dsi *dsi = FUNC12(output);
	unsigned int scdiv;
	unsigned long plld;
	int err;

	state->pclk = crtc_state->mode.clock * 1000;

	err = FUNC11(dsi->format, &state->mul, &state->div);
	if (err < 0)
		return err;

	state->lanes = FUNC10(dsi);

	err = FUNC9(dsi->format, &state->format);
	if (err < 0)
		return err;

	state->vrefresh = FUNC4(&crtc_state->mode);

	/* compute byte clock */
	state->bclk = (state->pclk * state->mul) / (state->div * state->lanes);

	FUNC2("mul: %u, div: %u, lanes: %u\n", state->mul, state->div,
		      state->lanes);
	FUNC2("format: %u, vrefresh: %u\n", state->format,
		      state->vrefresh);
	FUNC2("bclk: %lu\n", state->bclk);

	/*
	 * Compute bit clock and round up to the next MHz.
	 */
	plld = FUNC1(state->bclk * 8, USEC_PER_SEC) * USEC_PER_SEC;
	state->period = FUNC0(NSEC_PER_SEC, plld);

	err = FUNC6(&state->timing, state->period);
	if (err < 0)
		return err;

	err = FUNC7(&state->timing, state->period);
	if (err < 0) {
		FUNC3(dsi->dev, "failed to validate D-PHY timing: %d\n", err);
		return err;
	}

	/*
	 * We divide the frequency by two here, but we make up for that by
	 * setting the shift clock divider (further below) to half of the
	 * correct value.
	 */
	plld /= 2;

	/*
	 * Derive pixel clock from bit clock using the shift clock divider.
	 * Note that this is only half of what we would expect, but we need
	 * that to make up for the fact that we divided the bit clock by a
	 * factor of two above.
	 *
	 * It's not clear exactly why this is necessary, but the display is
	 * not working properly otherwise. Perhaps the PLLs cannot generate
	 * frequencies sufficiently high.
	 */
	scdiv = ((8 * state->mul) / (state->div * state->lanes)) - 2;

	err = FUNC8(dc, crtc_state, dsi->clk_parent,
					 plld, scdiv);
	if (err < 0) {
		FUNC3(output->dev, "failed to setup CRTC state: %d\n", err);
		return err;
	}

	return err;
}