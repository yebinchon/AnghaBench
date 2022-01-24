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
struct drm_simple_display_pipe {int dummy; } ;
struct drm_plane_state {TYPE_1__* fb; } ;
struct drm_gem_vram_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_GEM_VRAM_PL_FLAG_VRAM ; 
 struct drm_gem_vram_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_gem_vram_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_simple_display_pipe *pipe,
				 struct drm_plane_state *new_state)
{
	struct drm_gem_vram_object *gbo;

	if (!new_state->fb)
		return 0;
	gbo = FUNC0(new_state->fb->obj[0]);
	return FUNC1(gbo, DRM_GEM_VRAM_PL_FLAG_VRAM);
}