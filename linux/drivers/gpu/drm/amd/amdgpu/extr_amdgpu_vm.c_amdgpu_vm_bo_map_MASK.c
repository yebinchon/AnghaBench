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
typedef  scalar_t__ uint64_t ;
struct amdgpu_vm {int /*<<< orphan*/  va; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;
struct amdgpu_bo_va_mapping {scalar_t__ flags; scalar_t__ offset; scalar_t__ last; scalar_t__ start; } ;
struct TYPE_2__ {struct amdgpu_vm* vm; struct amdgpu_bo* bo; } ;
struct amdgpu_bo_va {TYPE_1__ base; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_GPU_PAGE_MASK ; 
 scalar_t__ AMDGPU_GPU_PAGE_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_bo_va*,struct amdgpu_bo_va_mapping*) ; 
 struct amdgpu_bo_va_mapping* FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct amdgpu_bo*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 struct amdgpu_bo_va_mapping* FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct amdgpu_device *adev,
		     struct amdgpu_bo_va *bo_va,
		     uint64_t saddr, uint64_t offset,
		     uint64_t size, uint64_t flags)
{
	struct amdgpu_bo_va_mapping *mapping, *tmp;
	struct amdgpu_bo *bo = bo_va->base.bo;
	struct amdgpu_vm *vm = bo_va->base.vm;
	uint64_t eaddr;

	/* validate the parameters */
	if (saddr & AMDGPU_GPU_PAGE_MASK || offset & AMDGPU_GPU_PAGE_MASK ||
	    size == 0 || size & AMDGPU_GPU_PAGE_MASK)
		return -EINVAL;

	/* make sure object fit at this offset */
	eaddr = saddr + size - 1;
	if (saddr >= eaddr ||
	    (bo && offset + size > FUNC0(bo)))
		return -EINVAL;

	saddr /= AMDGPU_GPU_PAGE_SIZE;
	eaddr /= AMDGPU_GPU_PAGE_SIZE;

	tmp = FUNC2(&vm->va, saddr, eaddr);
	if (tmp) {
		/* bo and tmp overlap, invalid addr */
		FUNC3(adev->dev, "bo %p va 0x%010Lx-0x%010Lx conflict with "
			"0x%010Lx-0x%010Lx\n", bo, saddr, eaddr,
			tmp->start, tmp->last + 1);
		return -EINVAL;
	}

	mapping = FUNC4(sizeof(*mapping), GFP_KERNEL);
	if (!mapping)
		return -ENOMEM;

	mapping->start = saddr;
	mapping->last = eaddr;
	mapping->offset = offset;
	mapping->flags = flags;

	FUNC1(adev, bo_va, mapping);

	return 0;
}