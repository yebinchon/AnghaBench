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
struct ttm_placement {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;
struct drm_gem_vram_object {struct ttm_placement placement; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_PL_FLAG_SYSTEM ; 
 struct drm_gem_vram_object* FUNC0 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_vram_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*) ; 

void FUNC3(struct ttm_buffer_object *bo,
					struct ttm_placement *pl)
{
	struct drm_gem_vram_object *gbo;

	/* TTM may pass BOs that are not GEM VRAM BOs. */
	if (!FUNC2(bo))
		return;

	gbo = FUNC0(bo);
	FUNC1(gbo, TTM_PL_FLAG_SYSTEM);
	*pl = gbo->placement;
}