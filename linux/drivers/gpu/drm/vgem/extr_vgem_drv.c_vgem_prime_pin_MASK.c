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
 long PAGE_SHIFT ; 
 int FUNC1 (struct page**) ; 
 int /*<<< orphan*/  FUNC2 (struct page**,long) ; 
 struct drm_vgem_gem_object* FUNC3 (struct drm_gem_object*) ; 
 struct page** FUNC4 (struct drm_vgem_gem_object*) ; 

__attribute__((used)) static int FUNC5(struct drm_gem_object *obj)
{
	struct drm_vgem_gem_object *bo = FUNC3(obj);
	long n_pages = obj->size >> PAGE_SHIFT;
	struct page **pages;

	pages = FUNC4(bo);
	if (FUNC0(pages))
		return FUNC1(pages);

	/* Flush the object from the CPU cache so that importers can rely
	 * on coherent indirect access via the exported dma-address.
	 */
	FUNC2(pages, n_pages);

	return 0;
}