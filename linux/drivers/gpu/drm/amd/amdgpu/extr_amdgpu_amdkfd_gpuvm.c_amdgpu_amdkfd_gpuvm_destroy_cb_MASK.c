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
struct amdkfd_process_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  pid; int /*<<< orphan*/  restore_userptr_work; TYPE_3__* eviction_fence; int /*<<< orphan*/  userptr_inval_list; int /*<<< orphan*/  userptr_valid_list; int /*<<< orphan*/  kfd_bo_list; int /*<<< orphan*/  n_vms; } ;
struct TYPE_4__ {struct amdgpu_bo* bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct amdgpu_vm {int /*<<< orphan*/  vm_list_node; TYPE_2__ root; struct amdkfd_process_info* process_info; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct amdkfd_process_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct amdgpu_device *adev,
				    struct amdgpu_vm *vm)
{
	struct amdkfd_process_info *process_info = vm->process_info;
	struct amdgpu_bo *pd = vm->root.base.bo;

	if (!process_info)
		return;

	/* Release eviction fence from PD */
	FUNC2(pd, false);
	FUNC1(pd, NULL, false);
	FUNC3(pd);

	/* Update process info */
	FUNC10(&process_info->lock);
	process_info->n_vms--;
	FUNC7(&vm->vm_list_node);
	FUNC11(&process_info->lock);

	/* Release per-process resources when last compute VM is destroyed */
	if (!process_info->n_vms) {
		FUNC0(!FUNC8(&process_info->kfd_bo_list));
		FUNC0(!FUNC8(&process_info->userptr_valid_list));
		FUNC0(!FUNC8(&process_info->userptr_inval_list));

		FUNC5(&process_info->eviction_fence->base);
		FUNC4(&process_info->restore_userptr_work);
		FUNC12(process_info->pid);
		FUNC9(&process_info->lock);
		FUNC6(process_info);
	}
}