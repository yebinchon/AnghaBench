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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {size_t address; struct vm_area_struct* vma; } ;
struct vm_area_struct {size_t vm_start; struct drm_gem_object* vm_private_data; } ;
struct page {int dummy; } ;
struct etnaviv_gem_object {int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int dummy; } ;
typedef  size_t pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page**) ; 
 size_t PAGE_SHIFT ; 
 int FUNC1 (struct page**) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,size_t,size_t) ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 struct page** FUNC3 (struct etnaviv_gem_object*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct page*) ; 
 struct etnaviv_gem_object* FUNC7 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_area_struct*,size_t,struct page*) ; 

vm_fault_t FUNC10(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct drm_gem_object *obj = vma->vm_private_data;
	struct etnaviv_gem_object *etnaviv_obj = FUNC7(obj);
	struct page **pages, *page;
	pgoff_t pgoff;
	int err;

	/*
	 * Make sure we don't parallel update on a fault, nor move or remove
	 * something from beneath our feet.  Note that vmf_insert_page() is
	 * specifically coded to take care of this, so we don't have to.
	 */
	err = FUNC4(&etnaviv_obj->lock);
	if (err)
		return VM_FAULT_NOPAGE;
	/* make sure we have pages attached now */
	pages = FUNC3(etnaviv_obj);
	FUNC5(&etnaviv_obj->lock);

	if (FUNC0(pages)) {
		err = FUNC1(pages);
		return FUNC8(err);
	}

	/* We don't use vmf->pgoff since that has the fake offset: */
	pgoff = (vmf->address - vma->vm_start) >> PAGE_SHIFT;

	page = pages[pgoff];

	FUNC2("Inserting %p pfn %lx, pa %lx", (void *)vmf->address,
	     FUNC6(page), FUNC6(page) << PAGE_SHIFT);

	return FUNC9(vma, vmf->address, page);
}