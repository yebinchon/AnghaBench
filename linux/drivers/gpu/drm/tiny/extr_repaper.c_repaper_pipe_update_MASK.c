#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_6__ {struct drm_plane_state* state; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; TYPE_3__ plane; } ;
struct drm_rect {int dummy; } ;
struct drm_plane_state {int /*<<< orphan*/  fb; } ;
struct TYPE_5__ {int /*<<< orphan*/ * event; } ;
struct TYPE_4__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_plane_state*,struct drm_plane_state*,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_simple_display_pipe *pipe,
				struct drm_plane_state *old_state)
{
	struct drm_plane_state *state = pipe->plane.state;
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_rect rect;

	if (FUNC0(old_state, state, &rect))
		FUNC2(state->fb);

	if (crtc->state->event) {
		FUNC3(&crtc->dev->event_lock);
		FUNC1(crtc, crtc->state->event);
		FUNC4(&crtc->dev->event_lock);
		crtc->state->event = NULL;
	}
}