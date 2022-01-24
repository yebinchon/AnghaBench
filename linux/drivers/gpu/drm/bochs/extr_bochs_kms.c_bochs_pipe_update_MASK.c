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
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct drm_crtc {TYPE_3__* dev; TYPE_2__* state; } ;
struct drm_simple_display_pipe {TYPE_1__ plane; struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct bochs_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  event_lock; struct bochs_device* dev_private; } ;
struct TYPE_5__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bochs_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_simple_display_pipe *pipe,
			      struct drm_plane_state *old_state)
{
	struct bochs_device *bochs = pipe->crtc.dev->dev_private;
	struct drm_crtc *crtc = &pipe->crtc;

	FUNC0(bochs, pipe->plane.state);

	if (crtc->state->event) {
		FUNC2(&crtc->dev->event_lock);
		FUNC1(crtc, crtc->state->event);
		crtc->state->event = NULL;
		FUNC3(&crtc->dev->event_lock);
	}
}