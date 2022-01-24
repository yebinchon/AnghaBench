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
struct vm_fault {unsigned long address; struct vm_area_struct* vma; } ;
struct vm_area_struct {unsigned long vm_start; struct drm_gem_object* vm_private_data; } ;
struct page {int dummy; } ;
struct msm_gem_object {scalar_t__ madv; int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int dummy; } ;
typedef  size_t pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page**) ; 
 scalar_t__ MSM_MADV_WILLNEED ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PFN_DEV ; 
 int /*<<< orphan*/  FUNC1 (struct page**) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 struct page** FUNC5 (struct drm_gem_object*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (struct page*) ; 
 struct msm_gem_object* FUNC9 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

vm_fault_t FUNC12(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct drm_gem_object *obj = vma->vm_private_data;
	struct msm_gem_object *msm_obj = FUNC9(obj);
	struct page **pages;
	unsigned long pfn;
	pgoff_t pgoff;
	int err;
	vm_fault_t ret;

	/*
	 * vm_ops.open/drm_gem_mmap_obj and close get and put
	 * a reference on obj. So, we dont need to hold one here.
	 */
	err = FUNC6(&msm_obj->lock);
	if (err) {
		ret = VM_FAULT_NOPAGE;
		goto out;
	}

	if (FUNC3(msm_obj->madv != MSM_MADV_WILLNEED)) {
		FUNC7(&msm_obj->lock);
		return VM_FAULT_SIGBUS;
	}

	/* make sure we have pages attached now */
	pages = FUNC5(obj);
	if (FUNC0(pages)) {
		ret = FUNC10(FUNC1(pages));
		goto out_unlock;
	}

	/* We don't use vmf->pgoff since that has the fake offset: */
	pgoff = (vmf->address - vma->vm_start) >> PAGE_SHIFT;

	pfn = FUNC8(pages[pgoff]);

	FUNC2("Inserting %p pfn %lx, pa %lx", (void *)vmf->address,
			pfn, pfn << PAGE_SHIFT);

	ret = FUNC11(vma, vmf->address, FUNC4(pfn, PFN_DEV));
out_unlock:
	FUNC7(&msm_obj->lock);
out:
	return ret;
}