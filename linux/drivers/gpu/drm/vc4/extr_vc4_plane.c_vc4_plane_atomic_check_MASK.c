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
struct vc4_plane_state {scalar_t__ dlist_count; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_plane_state*) ; 
 struct vc4_plane_state* FUNC1 (struct drm_plane_state*) ; 
 int FUNC2 (struct drm_plane_state*) ; 
 int FUNC3 (struct drm_plane*,struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC4(struct drm_plane *plane,
				  struct drm_plane_state *state)
{
	struct vc4_plane_state *vc4_state = FUNC1(state);
	int ret;

	vc4_state->dlist_count = 0;

	if (!FUNC0(state))
		return 0;

	ret = FUNC3(plane, state);
	if (ret)
		return ret;

	return FUNC2(state);
}