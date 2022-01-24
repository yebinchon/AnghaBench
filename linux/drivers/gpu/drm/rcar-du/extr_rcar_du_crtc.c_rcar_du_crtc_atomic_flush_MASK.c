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
struct TYPE_4__ {struct drm_device* dev; } ;
struct rcar_du_crtc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * event; TYPE_2__ crtc; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_3__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCAR_DU_FEATURE_VSP1_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_crtc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_du_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rcar_du_crtc* FUNC7 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *crtc,
				      struct drm_crtc_state *old_crtc_state)
{
	struct rcar_du_crtc *rcrtc = FUNC7(crtc);
	struct drm_device *dev = rcrtc->crtc.dev;
	unsigned long flags;

	FUNC2(rcrtc);

	if (crtc->state->event) {
		FUNC0(FUNC1(crtc) != 0);

		FUNC5(&dev->event_lock, flags);
		rcrtc->event = crtc->state->event;
		crtc->state->event = NULL;
		FUNC6(&dev->event_lock, flags);
	}

	if (FUNC3(rcrtc->dev, RCAR_DU_FEATURE_VSP1_SOURCE))
		FUNC4(rcrtc);
}