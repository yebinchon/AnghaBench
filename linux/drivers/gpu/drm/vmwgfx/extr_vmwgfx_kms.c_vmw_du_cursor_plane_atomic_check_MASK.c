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
struct TYPE_4__ {int /*<<< orphan*/  image; } ;
struct vmw_surface {TYPE_1__ snooper; } ;
struct drm_plane_state {int crtc_w; int crtc_h; scalar_t__ crtc; int /*<<< orphan*/  state; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  bo; } ;
struct TYPE_5__ {struct vmw_surface* surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_PLANE_HELPER_NO_SCALING ; 
 int EINVAL ; 
 struct drm_crtc_state* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct drm_plane_state*,struct drm_crtc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC3 (struct drm_framebuffer*) ; 
 TYPE_2__* FUNC4 (struct drm_framebuffer*) ; 

int FUNC5(struct drm_plane *plane,
				     struct drm_plane_state *new_state)
{
	int ret = 0;
	struct drm_crtc_state *crtc_state = NULL;
	struct vmw_surface *surface = NULL;
	struct drm_framebuffer *fb = new_state->fb;

	if (new_state->crtc)
		crtc_state = FUNC1(new_state->state,
							   new_state->crtc);

	ret = FUNC2(new_state, crtc_state,
						  DRM_PLANE_HELPER_NO_SCALING,
						  DRM_PLANE_HELPER_NO_SCALING,
						  true, true);
	if (ret)
		return ret;

	/* Turning off */
	if (!fb)
		return 0;

	/* A lot of the code assumes this */
	if (new_state->crtc_w != 64 || new_state->crtc_h != 64) {
		FUNC0("Invalid cursor dimensions (%d, %d)\n",
			  new_state->crtc_w, new_state->crtc_h);
		ret = -EINVAL;
	}

	if (!FUNC3(fb)->bo)
		surface = FUNC4(fb)->surface;

	if (surface && !surface->snooper.image) {
		FUNC0("surface not suitable for cursor\n");
		ret = -EINVAL;
	}

	return ret;
}