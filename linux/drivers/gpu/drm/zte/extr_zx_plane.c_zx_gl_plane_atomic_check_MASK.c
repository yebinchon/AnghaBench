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
struct drm_plane_state {struct drm_crtc* crtc; int /*<<< orphan*/  state; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int /*<<< orphan*/  enable; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_HELPER_NO_SCALING ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct drm_crtc_state* FUNC1 (int /*<<< orphan*/ ,struct drm_crtc*) ; 
 int FUNC2 (struct drm_plane_state*,struct drm_crtc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct drm_plane *plane,
				    struct drm_plane_state *plane_state)
{
	struct drm_framebuffer *fb = plane_state->fb;
	struct drm_crtc *crtc = plane_state->crtc;
	struct drm_crtc_state *crtc_state;

	if (!crtc || !fb)
		return 0;

	crtc_state = FUNC1(plane_state->state,
							crtc);
	if (FUNC0(!crtc_state))
		return -EINVAL;

	/* nothing to check when disabling or disabled */
	if (!crtc_state->enable)
		return 0;

	/* plane must be enabled */
	if (!plane_state->crtc)
		return -EINVAL;

	return FUNC2(plane_state, crtc_state,
						   DRM_PLANE_HELPER_NO_SCALING,
						   DRM_PLANE_HELPER_NO_SCALING,
						   false, true);
}