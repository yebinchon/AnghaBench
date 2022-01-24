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
struct drm_plane_state {int /*<<< orphan*/  fb; } ;
struct drm_plane {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct drm_gem_object* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_plane*,struct drm_plane_state*) ; 
 int FUNC3 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC4(struct drm_plane *plane,
			   struct drm_plane_state *state)
{
	struct drm_gem_object *gem_obj;
	int ret;

	if (!state->fb)
		return 0;

	gem_obj = FUNC1(state->fb, 0);
	ret = FUNC3(gem_obj);
	if (ret)
		FUNC0("vmap failed: %d\n", ret);

	return FUNC2(plane, state);
}