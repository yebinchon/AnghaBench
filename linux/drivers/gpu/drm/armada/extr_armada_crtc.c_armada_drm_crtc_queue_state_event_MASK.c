#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_pending_vblank_event {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct armada_crtc {struct drm_pending_vblank_event* event; } ;
struct TYPE_2__ {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_crtc*) ; 
 struct armada_crtc* FUNC2 (struct drm_crtc*) ; 
 struct drm_pending_vblank_event* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct armada_crtc *dcrtc = FUNC2(crtc);
	struct drm_pending_vblank_event *event;

	/* If we have an event, we need vblank events enabled */
	event = FUNC3(&crtc->state->event, NULL);
	if (event) {
		FUNC0(FUNC1(crtc) != 0);
		dcrtc->event = event;
	}
}