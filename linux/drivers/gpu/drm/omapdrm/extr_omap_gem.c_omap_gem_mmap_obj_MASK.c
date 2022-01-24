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
struct omap_gem_object {int flags; } ;
struct drm_gem_object {int /*<<< orphan*/  filp; } ;

/* Variables and functions */
 int EINVAL ; 
 int OMAP_BO_UNCACHED ; 
 int OMAP_BO_WC ; 
 int /*<<< orphan*/  VM_MIXEDMAP ; 
 int /*<<< orphan*/  VM_PFNMAP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct omap_gem_object* FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_gem_object *obj,
		struct vm_area_struct *vma)
{
	struct omap_gem_object *omap_obj = FUNC5(obj);

	vma->vm_flags &= ~VM_PFNMAP;
	vma->vm_flags |= VM_MIXEDMAP;

	if (omap_obj->flags & OMAP_BO_WC) {
		vma->vm_page_prot = FUNC4(FUNC6(vma->vm_flags));
	} else if (omap_obj->flags & OMAP_BO_UNCACHED) {
		vma->vm_page_prot = FUNC3(FUNC6(vma->vm_flags));
	} else {
		/*
		 * We do have some private objects, at least for scanout buffers
		 * on hardware without DMM/TILER.  But these are allocated write-
		 * combine
		 */
		if (FUNC0(!obj->filp))
			return -EINVAL;

		/*
		 * Shunt off cached objs to shmem file so they have their own
		 * address_space (so unmap_mapping_range does what we want,
		 * in particular in the case of mmap'd dmabufs)
		 */
		FUNC1(vma->vm_file);
		vma->vm_pgoff = 0;
		vma->vm_file  = FUNC2(obj->filp);

		vma->vm_page_prot = FUNC6(vma->vm_flags);
	}

	return 0;
}