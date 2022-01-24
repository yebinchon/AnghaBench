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
struct xen_gem_object {int /*<<< orphan*/  num_pages; int /*<<< orphan*/  pages; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  VM_MAP ; 
 struct xen_gem_object* FUNC0 (struct drm_gem_object*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC2(struct drm_gem_object *gem_obj)
{
	struct xen_gem_object *xen_obj = FUNC0(gem_obj);

	if (!xen_obj->pages)
		return NULL;

	/* Please see comment in gem_mmap_obj on mapping and attributes. */
	return FUNC1(xen_obj->pages, xen_obj->num_pages,
		    VM_MAP, PAGE_KERNEL);
}