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
struct drm_pending_vblank_event {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; TYPE_2__* state; } ;
struct TYPE_4__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_crtc_state)
{
	struct drm_pending_vblank_event *event;
	unsigned long flags;

	if (crtc->state && crtc->state->event) {
		event = crtc->state->event;
		crtc->state->event = NULL;

		FUNC1(&crtc->dev->event_lock, flags);
		FUNC0(crtc, event);
		FUNC2(&crtc->dev->event_lock, flags);
	}
}