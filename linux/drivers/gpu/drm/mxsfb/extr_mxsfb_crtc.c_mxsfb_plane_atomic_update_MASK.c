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
struct drm_crtc {TYPE_2__* dev; TYPE_1__* state; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct mxsfb_drm_private {TYPE_3__* devdata; scalar_t__ base; struct drm_simple_display_pipe pipe; } ;
struct drm_plane_state {int dummy; } ;
struct drm_pending_vblank_event {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_6__ {scalar_t__ next_buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_4__ {struct drm_pending_vblank_event* event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 scalar_t__ FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct mxsfb_drm_private*) ; 
 scalar_t__ FUNC5 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

void FUNC9(struct mxsfb_drm_private *mxsfb,
			       struct drm_plane_state *state)
{
	struct drm_simple_display_pipe *pipe = &mxsfb->pipe;
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_pending_vblank_event *event;
	dma_addr_t paddr;

	FUNC6(&crtc->dev->event_lock);
	event = crtc->state->event;
	if (event) {
		crtc->state->event = NULL;

		if (FUNC2(crtc) == 0) {
			FUNC0(crtc, event);
		} else {
			FUNC1(crtc, event);
		}
	}
	FUNC7(&crtc->dev->event_lock);

	paddr = FUNC5(mxsfb);
	if (paddr) {
		FUNC4(mxsfb);
		FUNC8(paddr, mxsfb->base + mxsfb->devdata->next_buf);
		FUNC3(mxsfb);
	}
}