#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned int vm_end; unsigned int vm_start; int vm_pgoff; TYPE_3__* vm_file; } ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_device {TYPE_2__ mman; } ;
struct TYPE_4__ {int /*<<< orphan*/  ttm; int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {int flags; TYPE_1__ tbo; } ;
struct TYPE_6__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_NO_CPU_ACCESS ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 int PAGE_SHIFT ; 
 int FUNC0 (struct amdgpu_bo*) ; 
 unsigned int FUNC1 (struct amdgpu_bo*) ; 
 struct amdgpu_device* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct amdgpu_bo* FUNC6 (struct drm_gem_object*) ; 
 int FUNC7 (TYPE_3__*,struct vm_area_struct*,int /*<<< orphan*/ *) ; 

int FUNC8(struct drm_gem_object *obj,
			  struct vm_area_struct *vma)
{
	struct amdgpu_bo *bo = FUNC6(obj);
	struct amdgpu_device *adev = FUNC2(bo->tbo.bdev);
	unsigned asize = FUNC1(bo);
	int ret;

	if (!vma->vm_file)
		return -ENODEV;

	if (adev == NULL)
		return -ENODEV;

	/* Check for valid size. */
	if (asize < vma->vm_end - vma->vm_start)
		return -EINVAL;

	if (FUNC3(bo->tbo.ttm) ||
	    (bo->flags & AMDGPU_GEM_CREATE_NO_CPU_ACCESS)) {
		return -EPERM;
	}
	vma->vm_pgoff += FUNC0(bo) >> PAGE_SHIFT;

	/* prime mmap does not need to check access, so allow here */
	ret = FUNC4(&obj->vma_node, vma->vm_file->private_data);
	if (ret)
		return ret;

	ret = FUNC7(vma->vm_file, vma, &adev->mman.bdev);
	FUNC5(&obj->vma_node, vma->vm_file->private_data);

	return ret;
}