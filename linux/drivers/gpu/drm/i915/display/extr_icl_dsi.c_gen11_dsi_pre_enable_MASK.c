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
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_dsi {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_SEQ_BACKLIGHT_ON ; 
 struct intel_dsi* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc_state const*,struct drm_connector_state const*) ; 

__attribute__((used)) static void FUNC8(struct intel_encoder *encoder,
				 const struct intel_crtc_state *pipe_config,
				 const struct drm_connector_state *conn_state)
{
	struct intel_dsi *intel_dsi = FUNC0(&encoder->base);

	/* step3b */
	FUNC3(encoder, pipe_config);

	/* step4: enable DSI port and DPHY */
	FUNC1(encoder, pipe_config);

	/* step5: program and powerup panel */
	FUNC4(encoder);

	/* step6c: configure transcoder timings */
	FUNC5(encoder, pipe_config);

	/* step6d: enable dsi transcoder */
	FUNC2(encoder);

	/* step7: enable backlight */
	FUNC7(pipe_config, conn_state);
	FUNC6(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
}