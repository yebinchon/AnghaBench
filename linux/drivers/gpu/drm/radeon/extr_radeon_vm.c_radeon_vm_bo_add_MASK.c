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
struct radeon_vm {int /*<<< orphan*/  mutex; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ last; scalar_t__ start; } ;
struct radeon_bo_va {int ref_count; int /*<<< orphan*/  bo_list; int /*<<< orphan*/  vm_status; scalar_t__ flags; TYPE_1__ it; struct radeon_bo* bo; struct radeon_vm* vm; } ;
struct radeon_bo {int /*<<< orphan*/  va; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct radeon_bo_va* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct radeon_bo_va *FUNC5(struct radeon_device *rdev,
				      struct radeon_vm *vm,
				      struct radeon_bo *bo)
{
	struct radeon_bo_va *bo_va;

	bo_va = FUNC1(sizeof(struct radeon_bo_va), GFP_KERNEL);
	if (bo_va == NULL) {
		return NULL;
	}
	bo_va->vm = vm;
	bo_va->bo = bo;
	bo_va->it.start = 0;
	bo_va->it.last = 0;
	bo_va->flags = 0;
	bo_va->ref_count = 1;
	FUNC0(&bo_va->bo_list);
	FUNC0(&bo_va->vm_status);

	FUNC3(&vm->mutex);
	FUNC2(&bo_va->bo_list, &bo->va);
	FUNC4(&vm->mutex);

	return bo_va;
}