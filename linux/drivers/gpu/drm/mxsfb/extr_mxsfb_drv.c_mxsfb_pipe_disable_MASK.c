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
struct mxsfb_drm_private {int /*<<< orphan*/  panel; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; TYPE_2__ plane; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct drm_pending_vblank_event* event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mxsfb_drm_private* FUNC3 (struct drm_simple_display_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct drm_simple_display_pipe *pipe)
{
	struct mxsfb_drm_private *mxsfb = FUNC3(pipe);
	struct drm_device *drm = pipe->plane.dev;
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_pending_vblank_event *event;

	FUNC1(mxsfb->panel);
	FUNC4(mxsfb);
	FUNC2(mxsfb->panel);
	FUNC5(drm->dev);

	FUNC6(&drm->event_lock);
	event = crtc->state->event;
	if (event) {
		crtc->state->event = NULL;
		FUNC0(crtc, event);
	}
	FUNC7(&drm->event_lock);
}