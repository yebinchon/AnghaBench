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
struct xen_drm_front_drm_pipeline {struct drm_pending_vblank_event* pending_event; } ;
struct drm_crtc {struct drm_device* dev; TYPE_1__* state; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct TYPE_2__ {struct drm_pending_vblank_event* event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_simple_display_pipe*,struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_drm_front_drm_pipeline*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct xen_drm_front_drm_pipeline* FUNC7 (struct drm_simple_display_pipe*) ; 

__attribute__((used)) static void FUNC8(struct drm_simple_display_pipe *pipe,
			   struct drm_plane_state *old_plane_state)
{
	struct xen_drm_front_drm_pipeline *pipeline =
			FUNC7(pipe);
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_pending_vblank_event *event;
	int idx;

	event = crtc->state->event;
	if (event) {
		struct drm_device *dev = crtc->dev;
		unsigned long flags;

		FUNC0(pipeline->pending_event);

		FUNC5(&dev->event_lock, flags);
		crtc->state->event = NULL;

		pipeline->pending_event = event;
		FUNC6(&dev->event_lock, flags);
	}

	if (!FUNC2(pipe->crtc.dev, &idx)) {
		FUNC4(pipeline);
		return;
	}

	/*
	 * Send page flip request to the backend *after* we have event cached
	 * above, so on page flip done event from the backend we can
	 * deliver it and there is no race condition between this code and
	 * event from the backend.
	 * If this is not a page flip, e.g. no flip done event from the backend
	 * is expected, then send now.
	 */
	if (!FUNC1(pipe, old_plane_state))
		FUNC4(pipeline);

	FUNC3(idx);
}