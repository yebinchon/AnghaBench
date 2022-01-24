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
struct drm_plane_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  state; } ;
struct drm_plane {int dummy; } ;
struct drm_crtc_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct drm_crtc_state*) ; 
 int FUNC2 (struct drm_crtc_state*) ; 
 struct drm_crtc_state* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_plane_state*,struct drm_crtc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct drm_plane *plane,
				      struct drm_plane_state *state)
{
	struct drm_crtc_state *crtc_state;

	if (!state->crtc)
		return 0;

	crtc_state = FUNC3(state->state, state->crtc);
	if (FUNC1(crtc_state))
		return FUNC2(crtc_state);

	return FUNC4(state, crtc_state,
						   FUNC0(1, 5),
						   FUNC0(5, 1),
						   true, true);
}