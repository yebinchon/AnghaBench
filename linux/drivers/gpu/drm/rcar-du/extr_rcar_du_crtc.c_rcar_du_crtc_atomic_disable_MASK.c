#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bridge; } ;
struct rcar_du_encoder {TYPE_2__ base; } ;
struct rcar_du_device {struct rcar_du_encoder** encoders; TYPE_1__* info; } ;
struct rcar_du_crtc_state {int outputs; } ;
struct rcar_du_crtc {size_t index; struct rcar_du_device* dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_4__* dev; TYPE_3__* state; } ;
struct TYPE_8__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/ * event; } ;
struct TYPE_5__ {int lvds_clk_mask; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 size_t RCAR_DU_OUTPUT_DPAD0 ; 
 size_t RCAR_DU_OUTPUT_LVDS0 ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct rcar_du_crtc* FUNC7 (struct drm_crtc*) ; 
 struct rcar_du_crtc_state* FUNC8 (struct drm_crtc_state*) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc,
					struct drm_crtc_state *old_state)
{
	struct rcar_du_crtc *rcrtc = FUNC7(crtc);
	struct rcar_du_crtc_state *rstate = FUNC8(old_state);
	struct rcar_du_device *rcdu = rcrtc->dev;

	FUNC3(rcrtc);
	FUNC2(rcrtc);

	if (rcdu->info->lvds_clk_mask & FUNC0(rcrtc->index) &&
	    rstate->outputs == FUNC0(RCAR_DU_OUTPUT_DPAD0)) {
		struct rcar_du_encoder *encoder =
			rcdu->encoders[RCAR_DU_OUTPUT_LVDS0 + rcrtc->index];

		/*
		 * Disable the LVDS clock output, see
		 * rcar_du_crtc_atomic_enable().
		 */
		FUNC4(encoder->base.bridge);
	}

	FUNC5(&crtc->dev->event_lock);
	if (crtc->state->event) {
		FUNC1(crtc, crtc->state->event);
		crtc->state->event = NULL;
	}
	FUNC6(&crtc->dev->event_lock);
}