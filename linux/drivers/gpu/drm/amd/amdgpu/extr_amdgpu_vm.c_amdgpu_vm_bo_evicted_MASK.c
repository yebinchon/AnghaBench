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
struct amdgpu_vm_bo_base {int moved; int /*<<< orphan*/  vm_status; struct amdgpu_bo* bo; struct amdgpu_vm* vm; } ;
struct amdgpu_vm {int /*<<< orphan*/  evicted; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ttm_bo_type_kernel ; 

__attribute__((used)) static void FUNC2(struct amdgpu_vm_bo_base *vm_bo)
{
	struct amdgpu_vm *vm = vm_bo->vm;
	struct amdgpu_bo *bo = vm_bo->bo;

	vm_bo->moved = true;
	if (bo->tbo.type == ttm_bo_type_kernel)
		FUNC0(&vm_bo->vm_status, &vm->evicted);
	else
		FUNC1(&vm_bo->vm_status, &vm->evicted);
}