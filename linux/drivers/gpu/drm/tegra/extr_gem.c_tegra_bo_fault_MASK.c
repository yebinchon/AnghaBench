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
struct tegra_bo {struct page** pages; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
typedef  size_t pgoff_t ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 struct tegra_bo* FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,size_t,struct page*) ; 

__attribute__((used)) static vm_fault_t FUNC2(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct drm_gem_object *gem = vma->vm_private_data;
	struct tegra_bo *bo = FUNC0(gem);
	struct page *page;
	pgoff_t offset;

	if (!bo->pages)
		return VM_FAULT_SIGBUS;

	offset = (vmf->address - vma->vm_start) >> PAGE_SHIFT;
	page = bo->pages[offset];

	return FUNC1(vma, vmf->address, page);
}