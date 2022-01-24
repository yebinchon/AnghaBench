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
struct TYPE_4__ {struct drm_plane_state* state; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_2__* state; int /*<<< orphan*/  mode; } ;
struct drm_simple_display_pipe {TYPE_1__ plane; struct drm_crtc crtc; } ;
struct drm_rect {int dummy; } ;
struct drm_plane_state {int /*<<< orphan*/  fb; } ;
struct cirrus_device {scalar_t__ cpp; } ;
struct TYPE_6__ {int /*<<< orphan*/  event_lock; struct cirrus_device* dev_private; } ;
struct TYPE_5__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC2 (struct cirrus_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_plane_state*,struct drm_plane_state*,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct drm_simple_display_pipe *pipe,
			       struct drm_plane_state *old_state)
{
	struct cirrus_device *cirrus = pipe->crtc.dev->dev_private;
	struct drm_plane_state *state = pipe->plane.state;
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_rect rect;

	if (pipe->plane.state->fb &&
	    cirrus->cpp != FUNC0(pipe->plane.state->fb))
		FUNC2(cirrus, &crtc->mode,
				pipe->plane.state->fb);

	if (FUNC3(old_state, state, &rect))
		FUNC1(pipe->plane.state->fb, &rect);

	if (crtc->state->event) {
		FUNC5(&crtc->dev->event_lock);
		FUNC4(crtc, crtc->state->event);
		crtc->state->event = NULL;
		FUNC6(&crtc->dev->event_lock);
	}
}