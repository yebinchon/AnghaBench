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
struct drm_plane_state {int /*<<< orphan*/  state; struct drm_crtc* crtc; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct drm_crtc_state* FUNC1 (int /*<<< orphan*/ ,struct drm_crtc*) ; 
 int FUNC2 (struct drm_crtc_state*,struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC3(struct drm_plane *plane,
				   struct drm_plane_state *state)
{
	struct drm_crtc *crtc;
	struct drm_crtc_state *crtc_state;

	crtc = state->crtc ? state->crtc : plane->state->crtc;
	if (!crtc)
		return 0;

	crtc_state = FUNC1(state->state, crtc);
	if (FUNC0(!crtc_state))
		return -EINVAL;

	return FUNC2(crtc_state, state);
}