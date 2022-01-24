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
struct lima_bo {int /*<<< orphan*/ * pages; } ;
struct drm_gem_object {int dummy; } ;
typedef  size_t pgoff_t ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  PFN_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct lima_bo* FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC4(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct drm_gem_object *obj = vma->vm_private_data;
	struct lima_bo *bo = FUNC2(obj);
	pfn_t pfn;
	pgoff_t pgoff;

	/* We don't use vmf->pgoff since that has the fake offset: */
	pgoff = (vmf->address - vma->vm_start) >> PAGE_SHIFT;
	pfn = FUNC0(FUNC1(bo->pages[pgoff]), PFN_DEV);

	return FUNC3(vma, vmf->address, pfn);
}