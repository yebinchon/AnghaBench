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
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * event; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc,
				    struct drm_crtc_state *old_crtc_state)
{
	unsigned long flags;

	if (crtc->state->event) {
		FUNC3(&crtc->dev->event_lock, flags);

		if (FUNC2(crtc) != 0)
			FUNC1(crtc, crtc->state->event);
		else
			FUNC0(crtc, crtc->state->event);

		FUNC4(&crtc->dev->event_lock, flags);

		crtc->state->event = NULL;
	}
}