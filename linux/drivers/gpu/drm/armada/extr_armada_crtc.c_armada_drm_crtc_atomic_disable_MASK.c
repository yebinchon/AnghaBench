#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drm_pending_vblank_event {int dummy; } ;
struct TYPE_7__ {int flags; } ;
struct drm_crtc_state {TYPE_2__ adjusted_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_5__* dev; TYPE_4__* state; int /*<<< orphan*/  name; TYPE_1__ base; } ;
struct armada_crtc {TYPE_3__* variant; } ;
struct TYPE_10__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_9__ {struct drm_pending_vblank_event* event; int /*<<< orphan*/  active; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* disable ) (struct armada_crtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  FUNC1 (struct armada_crtc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 struct armada_crtc* FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct armada_crtc*) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc,
					   struct drm_crtc_state *old_state)
{
	struct armada_crtc *dcrtc = FUNC5(crtc);
	struct drm_pending_vblank_event *event;

	FUNC0("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);

	if (old_state->adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
		FUNC4(crtc);

	FUNC3(crtc);
	FUNC1(dcrtc, false);

	if (!crtc->state->active) {
		/*
		 * This modeset will be leaving the CRTC disabled, so
		 * call the backend to disable upstream clocks etc.
		 */
		if (dcrtc->variant->disable)
			dcrtc->variant->disable(dcrtc);

		/*
		 * We will not receive any further vblank events.
		 * Send the flip_done event manually.
		 */
		event = crtc->state->event;
		crtc->state->event = NULL;
		if (event) {
			FUNC6(&crtc->dev->event_lock);
			FUNC2(crtc, event);
			FUNC7(&crtc->dev->event_lock);
		}
	}
}