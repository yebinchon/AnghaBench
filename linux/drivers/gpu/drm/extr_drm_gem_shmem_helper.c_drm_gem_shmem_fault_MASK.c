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
struct vm_fault {int pgoff; int /*<<< orphan*/  address; struct vm_area_struct* vma; } ;
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct page {int dummy; } ;
struct drm_gem_shmem_object {struct page** pages; } ;
struct drm_gem_object {int size; } ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 scalar_t__ FUNC0 (int) ; 
 struct drm_gem_shmem_object* FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ ,struct page*) ; 

__attribute__((used)) static vm_fault_t FUNC3(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct drm_gem_object *obj = vma->vm_private_data;
	struct drm_gem_shmem_object *shmem = FUNC1(obj);
	loff_t num_pages = obj->size >> PAGE_SHIFT;
	struct page *page;

	if (vmf->pgoff >= num_pages || FUNC0(!shmem->pages))
		return VM_FAULT_SIGBUS;

	page = shmem->pages[vmf->pgoff];

	return FUNC2(vma, vmf->address, page);
}