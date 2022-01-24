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
struct mcde {int /*<<< orphan*/  dev; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_crtc {struct drm_device* dev; TYPE_1__* state; } ;
struct drm_simple_display_pipe {struct drm_plane plane; struct drm_crtc crtc; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; struct mcde* dev_private; } ;
struct TYPE_2__ {scalar_t__ active; struct drm_pending_vblank_event* event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 scalar_t__ FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_framebuffer*,struct drm_plane_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mcde*) ; 
 int /*<<< orphan*/  FUNC8 (struct mcde*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct drm_simple_display_pipe *pipe,
				struct drm_plane_state *old_pstate)
{
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_device *drm = crtc->dev;
	struct mcde *mcde = drm->dev_private;
	struct drm_pending_vblank_event *event = crtc->state->event;
	struct drm_plane *plane = &pipe->plane;
	struct drm_plane_state *pstate = plane->state;
	struct drm_framebuffer *fb = pstate->fb;

	/*
	 * Handle any pending event first, we need to arm the vblank
	 * interrupt before sending any update to the display so we don't
	 * miss the interrupt.
	 */
	if (event) {
		crtc->state->event = NULL;

		FUNC9(&crtc->dev->event_lock);
		/*
		 * Hardware must be on before we can arm any vblank event,
		 * this is not a scanout controller where there is always
		 * some periodic update going on, it is completely frozen
		 * until we get an update. If MCDE output isn't yet enabled,
		 * we just send a vblank dummy event back.
		 */
		if (crtc->state->active && FUNC5(crtc) == 0) {
			FUNC0(mcde->dev, "arm vblank event\n");
			FUNC3(crtc, event);
		} else {
			FUNC0(mcde->dev, "insert fake vblank event\n");
			FUNC4(crtc, event);
		}

		FUNC10(&crtc->dev->event_lock);
	}

	/*
	 * We do not start sending framebuffer updates before the
	 * display is enabled. Update events will however be dispatched
	 * from the DRM core before the display is enabled.
	 */
	if (fb) {
		FUNC8(mcde, FUNC6(fb, pstate, 0));
		/* Send a single frame using software sync */
		FUNC7(mcde);
		FUNC2(mcde->dev, "sent first display update\n");
	} else {
		/*
		 * If an update is receieved before the MCDE is enabled
		 * (before mcde_display_enable() is called) we can't really
		 * do much with that buffer.
		 */
		FUNC1(mcde->dev, "ignored a display update\n");
	}
}