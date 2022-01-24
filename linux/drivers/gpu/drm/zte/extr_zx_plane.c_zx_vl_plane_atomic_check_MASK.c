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
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct drm_crtc_state* FUNC2 (int /*<<< orphan*/ ,struct drm_crtc*) ; 
 int FUNC3 (struct drm_plane_state*,struct drm_crtc_state*,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct drm_plane *plane,
				    struct drm_plane_state *plane_state)
{
	struct drm_framebuffer *fb = plane_state->fb;
	struct drm_crtc *crtc = plane_state->crtc;
	struct drm_crtc_state *crtc_state;
	int min_scale = FUNC0(1, 8);
	int max_scale = FUNC0(8, 1);

	if (!crtc || !fb)
		return 0;

	crtc_state = FUNC2(plane_state->state,
							crtc);
	if (FUNC1(!crtc_state))
		return -EINVAL;

	/* nothing to check when disabling or disabled */
	if (!crtc_state->enable)
		return 0;

	/* plane must be enabled */
	if (!plane_state->crtc)
		return -EINVAL;

	return FUNC3(plane_state, crtc_state,
						   min_scale, max_scale,
						   true, true);
}