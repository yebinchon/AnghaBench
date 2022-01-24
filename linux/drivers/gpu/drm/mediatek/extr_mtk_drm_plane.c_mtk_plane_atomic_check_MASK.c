#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_plane_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  state; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_HELPER_NO_SCALING ; 
 scalar_t__ FUNC0 (struct drm_crtc_state*) ; 
 int FUNC1 (struct drm_crtc_state*) ; 
 struct drm_crtc_state* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_plane_state*,struct drm_crtc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct drm_plane *plane,
				  struct drm_plane_state *state)
{
	struct drm_framebuffer *fb = state->fb;
	struct drm_crtc_state *crtc_state;

	if (!fb)
		return 0;

	if (!state->crtc)
		return 0;

	crtc_state = FUNC2(state->state, state->crtc);
	if (FUNC0(crtc_state))
		return FUNC1(crtc_state);

	return FUNC3(state, crtc_state,
						   DRM_PLANE_HELPER_NO_SCALING,
						   DRM_PLANE_HELPER_NO_SCALING,
						   true, true);
}