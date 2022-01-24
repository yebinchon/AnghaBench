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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct vmw_display_unit {TYPE_1__ connector; } ;
struct vmw_connector_state {int dummy; } ;
struct drm_plane_state {struct drm_crtc* crtc; int /*<<< orphan*/  state; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_HELPER_NO_SCALING ; 
 struct drm_crtc_state* FUNC0 (int /*<<< orphan*/ ,struct drm_crtc*) ; 
 int FUNC1 (struct drm_plane_state*,struct drm_crtc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct vmw_connector_state* FUNC2 (int /*<<< orphan*/ ) ; 
 struct vmw_display_unit* FUNC3 (struct drm_crtc*) ; 

int FUNC4(struct drm_plane *plane,
				      struct drm_plane_state *state)
{
	struct drm_crtc_state *crtc_state = NULL;
	struct drm_framebuffer *new_fb = state->fb;
	int ret;

	if (state->crtc)
		crtc_state = FUNC0(state->state, state->crtc);

	ret = FUNC1(state, crtc_state,
						  DRM_PLANE_HELPER_NO_SCALING,
						  DRM_PLANE_HELPER_NO_SCALING,
						  false, true);

	if (!ret && new_fb) {
		struct drm_crtc *crtc = state->crtc;
		struct vmw_connector_state *vcs;
		struct vmw_display_unit *du = FUNC3(crtc);

		vcs = FUNC2(du->connector.state);
	}


	return ret;
}