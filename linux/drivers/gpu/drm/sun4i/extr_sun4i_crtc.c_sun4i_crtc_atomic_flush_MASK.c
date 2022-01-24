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
struct sun4i_crtc {int /*<<< orphan*/  engine; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; TYPE_2__* state; } ;
struct TYPE_4__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 struct sun4i_crtc* FUNC3 (struct drm_crtc*) ; 
 scalar_t__ FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *crtc,
				    struct drm_crtc_state *old_state)
{
	struct sun4i_crtc *scrtc = FUNC3(crtc);
	struct drm_pending_vblank_event *event = crtc->state->event;

	FUNC0("Committing plane changes\n");

	FUNC7(scrtc->engine);

	if (event) {
		crtc->state->event = NULL;

		FUNC5(&crtc->dev->event_lock);
		if (FUNC4(crtc) == 0)
			FUNC1(crtc, event);
		else
			FUNC2(crtc, event);
		FUNC6(&crtc->dev->event_lock);
	}
}