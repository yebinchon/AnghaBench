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
struct drm_plane_state {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  fb; int /*<<< orphan*/  crtc; } ;
struct drm_plane {int /*<<< orphan*/  name; struct drm_plane_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct drm_plane_state*) ; 

__attribute__((used)) static void FUNC4(struct drm_plane *plane,
				     struct drm_plane_state *old_state)
{
	struct drm_plane_state *state = plane->state;

	FUNC0("%s: update", plane->name);

	if (FUNC3(state)) {
		int ret;

		ret = FUNC2(plane,
				state->crtc, state->fb,
				&state->src, &state->dst);
		/* atomic_check should have ensured that this doesn't fail */
		FUNC1(ret < 0);
	}
}