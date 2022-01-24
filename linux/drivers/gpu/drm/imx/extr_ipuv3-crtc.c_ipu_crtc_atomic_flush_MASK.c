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
struct ipu_crtc {int /*<<< orphan*/ * event; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; TYPE_2__* state; } ;
struct TYPE_4__ {int /*<<< orphan*/ * event; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ipu_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc,
				  struct drm_crtc_state *old_crtc_state)
{
	FUNC2(&crtc->dev->event_lock);
	if (crtc->state->event) {
		struct ipu_crtc *ipu_crtc = FUNC4(crtc);

		FUNC0(FUNC1(crtc));
		ipu_crtc->event = crtc->state->event;
		crtc->state->event = NULL;
	}
	FUNC3(&crtc->dev->event_lock);
}