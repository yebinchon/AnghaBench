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
struct drm_gem_object {int /*<<< orphan*/  resv; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct dma_fence* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane_state*,struct dma_fence*) ; 
 struct drm_gem_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct drm_plane *plane,
			  struct drm_plane_state *state)
{
	struct drm_gem_object *obj;
	struct dma_fence *fence;

	if (!state->fb)
		return 0;

	obj = FUNC2(state->fb, 0);
	fence = FUNC0(obj->resv);
	FUNC1(state, fence);

	return 0;
}