#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* state; } ;
struct malidp_drm {int /*<<< orphan*/ * event; TYPE_2__ crtc; } ;
struct drm_device {int /*<<< orphan*/  event_lock; struct malidp_drm* dev_private; } ;
struct drm_atomic_state {struct drm_device* dev; } ;
struct TYPE_4__ {scalar_t__ active; int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct drm_atomic_state *state)
{
	struct drm_device *drm = state->dev;
	struct malidp_drm *malidp = drm->dev_private;
	int loop = 5;

	malidp->event = malidp->crtc.state->event;
	malidp->crtc.state->event = NULL;

	if (malidp->crtc.state->active) {
		/*
		 * if we have an event to deliver to userspace, make sure
		 * the vblank is enabled as we are sending it from the IRQ
		 * handler.
		 */
		if (malidp->event)
			FUNC3(&malidp->crtc);

		/* only set config_valid if the CRTC is enabled */
		if (FUNC4(drm) < 0) {
			/*
			 * make a loop around the second CVAL setting and
			 * try 5 times before giving up.
			 */
			while (loop--) {
				if (!FUNC4(drm))
					break;
			}
			FUNC0("timed out waiting for updated configuration\n");
		}

	} else if (malidp->event) {
		/* CRTC inactive means vblank IRQ is disabled, send event directly */
		FUNC5(&drm->event_lock);
		FUNC2(&malidp->crtc, malidp->event);
		malidp->event = NULL;
		FUNC6(&drm->event_lock);
	}
	FUNC1(state);
}