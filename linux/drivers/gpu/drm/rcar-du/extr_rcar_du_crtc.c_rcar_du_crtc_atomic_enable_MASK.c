#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bridge; } ;
struct rcar_du_encoder {TYPE_2__ base; } ;
struct rcar_du_device {struct rcar_du_encoder** encoders; TYPE_1__* info; } ;
struct rcar_du_crtc_state {int outputs; } ;
struct rcar_du_crtc {size_t index; struct rcar_du_device* dev; } ;
struct drm_display_mode {int clock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* state; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_4__ {int lvds_clk_mask; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 size_t RCAR_DU_OUTPUT_DPAD0 ; 
 size_t RCAR_DU_OUTPUT_LVDS0 ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct rcar_du_crtc* FUNC4 (struct drm_crtc*) ; 
 struct rcar_du_crtc_state* FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
				       struct drm_crtc_state *old_state)
{
	struct rcar_du_crtc *rcrtc = FUNC4(crtc);
	struct rcar_du_crtc_state *rstate = FUNC5(crtc->state);
	struct rcar_du_device *rcdu = rcrtc->dev;

	FUNC1(rcrtc);

	/*
	 * On D3/E3 the dot clock is provided by the LVDS encoder attached to
	 * the DU channel. We need to enable its clock output explicitly if
	 * the LVDS output is disabled.
	 */
	if (rcdu->info->lvds_clk_mask & FUNC0(rcrtc->index) &&
	    rstate->outputs == FUNC0(RCAR_DU_OUTPUT_DPAD0)) {
		struct rcar_du_encoder *encoder =
			rcdu->encoders[RCAR_DU_OUTPUT_LVDS0 + rcrtc->index];
		const struct drm_display_mode *mode =
			&crtc->state->adjusted_mode;

		FUNC3(encoder->base.bridge,
				     mode->clock * 1000);
	}

	FUNC2(rcrtc);
}