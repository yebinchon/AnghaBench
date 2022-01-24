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
struct mtk_drm_crtc {TYPE_1__* event; } ;
struct TYPE_4__ {TYPE_1__* event; } ;
struct mtk_crtc_state {TYPE_2__ base; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 scalar_t__ FUNC3 (struct drm_crtc*) ; 
 struct mtk_drm_crtc* FUNC4 (struct drm_crtc*) ; 
 struct mtk_crtc_state* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
				      struct drm_crtc_state *old_crtc_state)
{
	struct mtk_crtc_state *state = FUNC5(crtc->state);
	struct mtk_drm_crtc *mtk_crtc = FUNC4(crtc);

	if (mtk_crtc->event && state->base.event)
		FUNC0("new event while there is still a pending event\n");

	if (state->base.event) {
		state->base.event->pipe = FUNC2(crtc);
		FUNC1(FUNC3(crtc) != 0);
		mtk_crtc->event = state->base.event;
		state->base.event = NULL;
	}
}