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
typedef  int /*<<< orphan*/  u32 ;
struct pl111_drm_dev_private {scalar_t__ regs; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_crtc {struct drm_device* dev; TYPE_1__* state; } ;
struct drm_simple_display_pipe {struct drm_plane plane; struct drm_crtc crtc; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; struct pl111_drm_dev_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ active; struct drm_pending_vblank_event* event; } ;

/* Variables and functions */
 scalar_t__ CLCD_UBAS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 scalar_t__ FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_framebuffer*,struct drm_plane_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct drm_simple_display_pipe *pipe,
				 struct drm_plane_state *old_pstate)
{
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_device *drm = crtc->dev;
	struct pl111_drm_dev_private *priv = drm->dev_private;
	struct drm_pending_vblank_event *event = crtc->state->event;
	struct drm_plane *plane = &pipe->plane;
	struct drm_plane_state *pstate = plane->state;
	struct drm_framebuffer *fb = pstate->fb;

	if (fb) {
		u32 addr = FUNC3(fb, pstate, 0);

		FUNC6(addr, priv->regs + CLCD_UBAS);
	}

	if (event) {
		crtc->state->event = NULL;

		FUNC4(&crtc->dev->event_lock);
		if (crtc->state->active && FUNC2(crtc) == 0)
			FUNC0(crtc, event);
		else
			FUNC1(crtc, event);
		FUNC5(&crtc->dev->event_lock);
	}
}