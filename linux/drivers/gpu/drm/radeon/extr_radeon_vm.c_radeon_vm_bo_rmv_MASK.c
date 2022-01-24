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
struct radeon_vm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  status_lock; int /*<<< orphan*/  freed; int /*<<< orphan*/  va; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ last; scalar_t__ start; } ;
struct radeon_bo_va {int /*<<< orphan*/  last_pt_update; int /*<<< orphan*/  vm_status; int /*<<< orphan*/  bo; TYPE_1__ it; int /*<<< orphan*/  bo_list; struct radeon_vm* vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_bo_va*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct radeon_device *rdev,
		      struct radeon_bo_va *bo_va)
{
	struct radeon_vm *vm = bo_va->vm;

	FUNC3(&bo_va->bo_list);

	FUNC4(&vm->mutex);
	if (bo_va->it.start || bo_va->it.last)
		FUNC0(&bo_va->it, &vm->va);

	FUNC8(&vm->status_lock);
	FUNC3(&bo_va->vm_status);
	if (bo_va->it.start || bo_va->it.last) {
		bo_va->bo = FUNC6(bo_va->bo);
		FUNC2(&bo_va->vm_status, &vm->freed);
	} else {
		FUNC7(&bo_va->last_pt_update);
		FUNC1(bo_va);
	}
	FUNC9(&vm->status_lock);

	FUNC5(&vm->mutex);
}