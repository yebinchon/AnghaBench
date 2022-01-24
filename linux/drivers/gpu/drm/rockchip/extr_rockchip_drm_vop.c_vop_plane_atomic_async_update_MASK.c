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
struct vop {int /*<<< orphan*/  pending; int /*<<< orphan*/  fb_unref_work; int /*<<< orphan*/  reg_lock; scalar_t__ is_enabled; } ;
struct drm_plane_state {int /*<<< orphan*/  fb; int /*<<< orphan*/  src_w; int /*<<< orphan*/  src_h; int /*<<< orphan*/  src_y; int /*<<< orphan*/  src_x; int /*<<< orphan*/  crtc_w; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_y; int /*<<< orphan*/  crtc_x; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; struct drm_framebuffer* fb; int /*<<< orphan*/  src_w; int /*<<< orphan*/  src_h; int /*<<< orphan*/  src_y; int /*<<< orphan*/  src_x; int /*<<< orphan*/  crtc_w; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_y; int /*<<< orphan*/  crtc_x; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOP_PENDING_FB_UNREF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 struct vop* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vop*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_plane*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(struct drm_plane *plane,
					  struct drm_plane_state *new_state)
{
	struct vop *vop = FUNC8(plane->state->crtc);
	struct drm_framebuffer *old_fb = plane->state->fb;

	plane->state->crtc_x = new_state->crtc_x;
	plane->state->crtc_y = new_state->crtc_y;
	plane->state->crtc_h = new_state->crtc_h;
	plane->state->crtc_w = new_state->crtc_w;
	plane->state->src_x = new_state->src_x;
	plane->state->src_y = new_state->src_y;
	plane->state->src_h = new_state->src_h;
	plane->state->src_w = new_state->src_w;
	FUNC7(plane->state->fb, new_state->fb);

	if (vop->is_enabled) {
		FUNC10(plane, plane->state);
		FUNC5(&vop->reg_lock);
		FUNC9(vop);
		FUNC6(&vop->reg_lock);

		/*
		 * A scanout can still be occurring, so we can't drop the
		 * reference to the old framebuffer. To solve this we get a
		 * reference to old_fb and set a worker to release it later.
		 * FIXME: if we perform 500 async_update calls before the
		 * vblank, then we can have 500 different framebuffers waiting
		 * to be released.
		 */
		if (old_fb && plane->state->fb != old_fb) {
			FUNC3(old_fb);
			FUNC0(FUNC1(plane->state->crtc) != 0);
			FUNC2(&vop->fb_unref_work, old_fb);
			FUNC4(VOP_PENDING_FB_UNREF, &vop->pending);
		}
	}
}