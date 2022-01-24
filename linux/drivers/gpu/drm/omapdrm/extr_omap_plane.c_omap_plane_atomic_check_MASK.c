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
struct drm_plane_state {scalar_t__ crtc_x; scalar_t__ crtc_y; scalar_t__ crtc_w; scalar_t__ crtc_h; scalar_t__ rotation; int /*<<< orphan*/  fb; int /*<<< orphan*/  crtc; int /*<<< orphan*/  state; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_crtc_state {TYPE_1__ adjusted_mode; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 scalar_t__ DRM_MODE_ROTATE_0 ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct drm_crtc_state* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_plane *plane,
				   struct drm_plane_state *state)
{
	struct drm_crtc_state *crtc_state;

	if (!state->fb)
		return 0;

	/* crtc should only be NULL when disabling (i.e., !state->fb) */
	if (FUNC0(!state->crtc))
		return 0;

	crtc_state = FUNC1(state->state, state->crtc);
	/* we should have a crtc state if the plane is attached to a crtc */
	if (FUNC0(!crtc_state))
		return 0;

	if (!crtc_state->enable)
		return 0;

	if (state->crtc_x < 0 || state->crtc_y < 0)
		return -EINVAL;

	if (state->crtc_x + state->crtc_w > crtc_state->adjusted_mode.hdisplay)
		return -EINVAL;

	if (state->crtc_y + state->crtc_h > crtc_state->adjusted_mode.vdisplay)
		return -EINVAL;

	if (state->rotation != DRM_MODE_ROTATE_0 &&
	    !FUNC2(state->fb))
		return -EINVAL;

	return 0;
}