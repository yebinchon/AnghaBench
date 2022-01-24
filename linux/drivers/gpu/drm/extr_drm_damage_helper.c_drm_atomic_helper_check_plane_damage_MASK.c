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
struct drm_plane_state {int /*<<< orphan*/ * fb_damage_clips; scalar_t__ crtc; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_crtc_state*) ; 
 struct drm_crtc_state* FUNC2 (struct drm_atomic_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_atomic_state *state,
					  struct drm_plane_state *plane_state)
{
	struct drm_crtc_state *crtc_state;

	if (plane_state->crtc) {
		crtc_state = FUNC2(state,
							   plane_state->crtc);

		if (FUNC0(!crtc_state))
			return;

		if (FUNC1(crtc_state)) {
			FUNC3(plane_state->fb_damage_clips);
			plane_state->fb_damage_clips = NULL;
		}
	}
}