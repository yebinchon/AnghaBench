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
struct mtk_drm_gem_obj {scalar_t__ pages; scalar_t__ kvaddr; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct mtk_drm_gem_obj* FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void FUNC3(struct drm_gem_object *obj, void *vaddr)
{
	struct mtk_drm_gem_obj *mtk_gem = FUNC1(obj);

	if (!mtk_gem->pages)
		return;

	FUNC2(vaddr);
	mtk_gem->kvaddr = 0;
	FUNC0((void *)mtk_gem->pages);
}