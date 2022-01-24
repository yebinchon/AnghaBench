#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  vm_pgoff; int /*<<< orphan*/  vm_flags; int /*<<< orphan*/  vm_private_data; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vma_node; } ;
struct drm_gem_shmem_object {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_MIXEDMAP ; 
 int /*<<< orphan*/  VM_PFNMAP ; 
 int FUNC0 (struct file*,struct vm_area_struct*) ; 
 int FUNC1 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_gem_shmem_object* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct file *filp, struct vm_area_struct *vma)
{
	struct drm_gem_shmem_object *shmem;
	int ret;

	ret = FUNC0(filp, vma);
	if (ret)
		return ret;

	shmem = FUNC4(vma->vm_private_data);

	ret = FUNC1(shmem);
	if (ret) {
		FUNC2(vma);
		return ret;
	}

	/* VM_PFNMAP was set by drm_gem_mmap() */
	vma->vm_flags &= ~VM_PFNMAP;
	vma->vm_flags |= VM_MIXEDMAP;

	/* Remove the fake offset */
	vma->vm_pgoff -= FUNC3(&shmem->base.vma_node);

	return 0;
}