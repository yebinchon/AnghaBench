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
struct page {int dummy; } ;
struct drm_vgem_gem_object {int dummy; } ;
struct drm_gem_object {long size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page**) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_vgem_gem_object* FUNC2 (struct drm_gem_object*) ; 
 struct page** FUNC3 (struct drm_vgem_gem_object*) ; 
 void* FUNC4 (struct page**,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(struct drm_gem_object *obj)
{
	struct drm_vgem_gem_object *bo = FUNC2(obj);
	long n_pages = obj->size >> PAGE_SHIFT;
	struct page **pages;

	pages = FUNC3(bo);
	if (FUNC0(pages))
		return NULL;

	return FUNC4(pages, n_pages, 0, FUNC1(PAGE_KERNEL));
}