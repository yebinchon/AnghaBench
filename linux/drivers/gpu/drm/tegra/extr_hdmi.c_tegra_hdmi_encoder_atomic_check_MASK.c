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
struct tegra_hdmi {int /*<<< orphan*/  clk_parent; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;
struct drm_connector_state {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct tegra_output* FUNC1 (struct drm_encoder*) ; 
 int FUNC2 (struct tegra_dc*,struct drm_crtc_state*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct tegra_hdmi* FUNC3 (struct tegra_output*) ; 
 struct tegra_dc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct drm_encoder *encoder,
				struct drm_crtc_state *crtc_state,
				struct drm_connector_state *conn_state)
{
	struct tegra_output *output = FUNC1(encoder);
	struct tegra_dc *dc = FUNC4(conn_state->crtc);
	unsigned long pclk = crtc_state->mode.clock * 1000;
	struct tegra_hdmi *hdmi = FUNC3(output);
	int err;

	err = FUNC2(dc, crtc_state, hdmi->clk_parent,
					 pclk, 0);
	if (err < 0) {
		FUNC0(output->dev, "failed to setup CRTC state: %d\n", err);
		return err;
	}

	return err;
}