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
struct mdp5_plane_state {int /*<<< orphan*/  hwpipe; } ;
struct drm_plane_state {scalar_t__ crtc; scalar_t__ src_w; scalar_t__ src_h; scalar_t__ crtc_w; scalar_t__ crtc_h; scalar_t__ fb; scalar_t__ visible; int /*<<< orphan*/  state; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_crtc_state {int /*<<< orphan*/  active; } ;
struct TYPE_2__ {scalar_t__ crtc; scalar_t__ src_w; scalar_t__ src_h; scalar_t__ crtc_w; scalar_t__ crtc_h; scalar_t__ fb; scalar_t__ visible; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct drm_crtc_state* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct drm_plane_state*,struct drm_crtc_state*,int,int,int,int) ; 
 struct mdp5_plane_state* FUNC4 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC5(struct drm_plane *plane,
					 struct drm_plane_state *state)
{
	struct mdp5_plane_state *mdp5_state = FUNC4(state);
	struct drm_crtc_state *crtc_state;
	int min_scale, max_scale;
	int ret;

	crtc_state = FUNC2(state->state,
							state->crtc);
	if (FUNC1(!crtc_state))
		return -EINVAL;

	if (!crtc_state->active)
		return -EINVAL;

	mdp5_state = FUNC4(state);

	/* don't use fast path if we don't have a hwpipe allocated yet */
	if (!mdp5_state->hwpipe)
		return -EINVAL;

	/* only allow changing of position(crtc x/y or src x/y) in fast path */
	if (plane->state->crtc != state->crtc ||
	    plane->state->src_w != state->src_w ||
	    plane->state->src_h != state->src_h ||
	    plane->state->crtc_w != state->crtc_w ||
	    plane->state->crtc_h != state->crtc_h ||
	    !plane->state->fb ||
	    plane->state->fb != state->fb)
		return -EINVAL;

	min_scale = FUNC0(1, 8);
	max_scale = FUNC0(8, 1);

	ret = FUNC3(state, crtc_state,
						  min_scale, max_scale,
						  true, true);
	if (ret)
		return ret;

	/*
	 * if the visibility of the plane changes (i.e, if the cursor is
	 * clipped out completely, we can't take the async path because
	 * we need to stage/unstage the plane from the Layer Mixer(s). We
	 * also assign/unassign the hwpipe(s) tied to the plane. We avoid
	 * taking the fast path for both these reasons.
	 */
	if (state->visible != plane->state->visible)
		return -EINVAL;

	return 0;
}