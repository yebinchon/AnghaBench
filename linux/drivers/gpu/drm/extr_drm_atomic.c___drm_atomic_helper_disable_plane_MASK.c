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
struct drm_plane_state {scalar_t__ src_h; scalar_t__ src_w; scalar_t__ src_y; scalar_t__ src_x; scalar_t__ crtc_h; scalar_t__ crtc_w; scalar_t__ crtc_y; scalar_t__ crtc_x; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_plane_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane_state*,int /*<<< orphan*/ *) ; 

int FUNC2(struct drm_plane *plane,
				      struct drm_plane_state *plane_state)
{
	int ret;

	ret = FUNC0(plane_state, NULL);
	if (ret != 0)
		return ret;

	FUNC1(plane_state, NULL);
	plane_state->crtc_x = 0;
	plane_state->crtc_y = 0;
	plane_state->crtc_w = 0;
	plane_state->crtc_h = 0;
	plane_state->src_x = 0;
	plane_state->src_y = 0;
	plane_state->src_w = 0;
	plane_state->src_h = 0;

	return 0;
}