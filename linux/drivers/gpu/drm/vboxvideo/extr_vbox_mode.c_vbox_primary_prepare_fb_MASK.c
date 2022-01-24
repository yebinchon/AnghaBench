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
struct drm_plane_state {int /*<<< orphan*/  fb; } ;
struct drm_plane {int dummy; } ;
struct drm_gem_vram_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_GEM_VRAM_PL_FLAG_VRAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct drm_gem_vram_object* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_gem_vram_object*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_plane *plane,
				   struct drm_plane_state *new_state)
{
	struct drm_gem_vram_object *gbo;
	int ret;

	if (!new_state->fb)
		return 0;

	gbo = FUNC1(FUNC3(new_state->fb)->obj);
	ret = FUNC2(gbo, DRM_GEM_VRAM_PL_FLAG_VRAM);
	if (ret)
		FUNC0("Error %d pinning new fb, out of video mem?\n", ret);

	return ret;
}