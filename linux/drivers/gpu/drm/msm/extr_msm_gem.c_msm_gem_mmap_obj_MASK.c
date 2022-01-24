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
struct vm_area_struct {int /*<<< orphan*/  vm_flags; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_file; scalar_t__ vm_pgoff; } ;
struct msm_gem_object {int flags; } ;
struct drm_gem_object {int /*<<< orphan*/  filp; } ;

/* Variables and functions */
 int MSM_BO_UNCACHED ; 
 int MSM_BO_WC ; 
 int /*<<< orphan*/  VM_MIXEDMAP ; 
 int /*<<< orphan*/  VM_PFNMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct msm_gem_object* FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct drm_gem_object *obj,
		struct vm_area_struct *vma)
{
	struct msm_gem_object *msm_obj = FUNC4(obj);

	vma->vm_flags &= ~VM_PFNMAP;
	vma->vm_flags |= VM_MIXEDMAP;

	if (msm_obj->flags & MSM_BO_WC) {
		vma->vm_page_prot = FUNC3(FUNC5(vma->vm_flags));
	} else if (msm_obj->flags & MSM_BO_UNCACHED) {
		vma->vm_page_prot = FUNC2(FUNC5(vma->vm_flags));
	} else {
		/*
		 * Shunt off cached objs to shmem file so they have their own
		 * address_space (so unmap_mapping_range does what we want,
		 * in particular in the case of mmap'd dmabufs)
		 */
		FUNC0(vma->vm_file);
		FUNC1(obj->filp);
		vma->vm_pgoff = 0;
		vma->vm_file  = obj->filp;

		vma->vm_page_prot = FUNC5(vma->vm_flags);
	}

	return 0;
}