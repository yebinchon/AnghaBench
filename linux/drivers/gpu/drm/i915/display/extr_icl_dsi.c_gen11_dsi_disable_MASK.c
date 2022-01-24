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
 int /*<<< orphan*/  MIPI_SEQ_BACKLIGHT_OFF ; 
 struct intel_dsi* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector_state const*) ; 

__attribute__((used)) static void FUNC8(struct intel_encoder *encoder,
			      const struct intel_crtc_state *old_crtc_state,
			      const struct drm_connector_state *old_conn_state)
{
	struct intel_dsi *intel_dsi = FUNC0(&encoder->base);

	/* step1: turn off backlight */
	FUNC6(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
	FUNC7(old_conn_state);

	/* step2d,e: disable transcoder and wait */
	FUNC4(encoder);

	/* step2f,g: powerdown panel */
	FUNC5(encoder);

	/* step2h,i,j: deconfig trancoder */
	FUNC1(encoder);

	/* step3: disable port */
	FUNC3(encoder);

	/* step4: disable IO power */
	FUNC2(encoder);
}