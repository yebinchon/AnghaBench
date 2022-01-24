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
struct exynos_drm_gem {size_t size; int /*<<< orphan*/ * pages; } ;
struct drm_gem_object {int dummy; } ;
typedef  size_t pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  PFN_DEV ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 struct exynos_drm_gem* FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,size_t,int /*<<< orphan*/ ) ; 

vm_fault_t FUNC5(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct drm_gem_object *obj = vma->vm_private_data;
	struct exynos_drm_gem *exynos_gem = FUNC3(obj);
	unsigned long pfn;
	pgoff_t page_offset;

	page_offset = (vmf->address - vma->vm_start) >> PAGE_SHIFT;

	if (page_offset >= (exynos_gem->size >> PAGE_SHIFT)) {
		FUNC0("invalid page offset\n");
		return VM_FAULT_SIGBUS;
	}

	pfn = FUNC2(exynos_gem->pages[page_offset]);
	return FUNC4(vma, vmf->address,
			FUNC1(pfn, PFN_DEV));
}