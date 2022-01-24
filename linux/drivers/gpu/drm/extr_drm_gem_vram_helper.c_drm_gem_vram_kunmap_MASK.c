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
struct ttm_bo_kmap_obj {int /*<<< orphan*/ * virtual; } ;
struct drm_gem_vram_object {struct ttm_bo_kmap_obj kmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ttm_bo_kmap_obj*) ; 

void FUNC1(struct drm_gem_vram_object *gbo)
{
	struct ttm_bo_kmap_obj *kmap = &gbo->kmap;

	if (!kmap->virtual)
		return;

	FUNC0(kmap);
	kmap->virtual = NULL;
}