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
struct drm_plane_state {scalar_t__ crtc; struct drm_atomic_state* state; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct drm_plane {int fb; int old_fb; int crtc; int /*<<< orphan*/  name; TYPE_3__ base; int /*<<< orphan*/  state; TYPE_1__* funcs; int /*<<< orphan*/  mutex; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_atomic_state {TYPE_2__* planes; int /*<<< orphan*/  acquire_ctx; } ;
struct TYPE_5__ {struct drm_plane_state* new_state; int /*<<< orphan*/  old_state; struct drm_plane* ptr; struct drm_plane_state* state; } ;
struct TYPE_4__ {struct drm_plane_state* (* atomic_duplicate_state ) (struct drm_plane*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_plane_state*,struct drm_atomic_state*) ; 
 int ENOMEM ; 
 struct drm_plane_state* FUNC1 (struct drm_crtc_state*) ; 
 struct drm_plane_state* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct drm_crtc_state* FUNC5 (struct drm_atomic_state*,scalar_t__) ; 
 struct drm_plane_state* FUNC6 (struct drm_atomic_state*,struct drm_plane*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct drm_plane*) ; 
 struct drm_plane_state* FUNC9 (struct drm_plane*) ; 

struct drm_plane_state *
FUNC10(struct drm_atomic_state *state,
			  struct drm_plane *plane)
{
	int ret, index = FUNC8(plane);
	struct drm_plane_state *plane_state;

	FUNC4(!state->acquire_ctx);

	/* the legacy pointers should never be set */
	FUNC4(plane->fb);
	FUNC4(plane->old_fb);
	FUNC4(plane->crtc);

	plane_state = FUNC6(state, plane);
	if (plane_state)
		return plane_state;

	ret = FUNC7(&plane->mutex, state->acquire_ctx);
	if (ret)
		return FUNC2(ret);

	plane_state = plane->funcs->atomic_duplicate_state(plane);
	if (!plane_state)
		return FUNC2(-ENOMEM);

	state->planes[index].state = plane_state;
	state->planes[index].ptr = plane;
	state->planes[index].old_state = plane->state;
	state->planes[index].new_state = plane_state;
	plane_state->state = state;

	FUNC0("Added [PLANE:%d:%s] %p state to %p\n",
			 plane->base.id, plane->name, plane_state, state);

	if (plane_state->crtc) {
		struct drm_crtc_state *crtc_state;

		crtc_state = FUNC5(state,
						       plane_state->crtc);
		if (FUNC3(crtc_state))
			return FUNC1(crtc_state);
	}

	return plane_state;
}