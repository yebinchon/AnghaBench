#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* state; } ;
struct drm_crtc {TYPE_4__* dev; TYPE_3__* state; } ;
struct drm_simple_display_pipe {TYPE_2__ plane; struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  paddr; } ;
struct drm_framebuffer {int dummy; } ;
struct aspeed_gfx {scalar_t__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_7__ {struct drm_pending_vblank_event* event; } ;
struct TYPE_5__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 scalar_t__ CRT_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,struct drm_pending_vblank_event*) ; 
 scalar_t__ FUNC2 (struct drm_crtc*) ; 
 struct drm_gem_cma_object* FUNC3 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 struct aspeed_gfx* FUNC4 (struct drm_simple_display_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct drm_simple_display_pipe *pipe,
				   struct drm_plane_state *plane_state)
{
	struct aspeed_gfx *priv = FUNC4(pipe);
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_framebuffer *fb = pipe->plane.state->fb;
	struct drm_pending_vblank_event *event;
	struct drm_gem_cma_object *gem;

	FUNC5(&crtc->dev->event_lock);
	event = crtc->state->event;
	if (event) {
		crtc->state->event = NULL;

		if (FUNC2(crtc) == 0)
			FUNC0(crtc, event);
		else
			FUNC1(crtc, event);
	}
	FUNC6(&crtc->dev->event_lock);

	if (!fb)
		return;

	gem = FUNC3(fb, 0);
	if (!gem)
		return;
	FUNC7(gem->paddr, priv->base + CRT_ADDR);
}