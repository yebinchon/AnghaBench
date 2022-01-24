#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_6__* bo; } ;
struct TYPE_11__ {TYPE_5__ base; } ;
struct amdgpu_vm {int pte_support_ats; int use_cpu_for_update; unsigned int pasid; int /*<<< orphan*/  entity; TYPE_4__ root; int /*<<< orphan*/  faults; int /*<<< orphan*/ * last_update; int /*<<< orphan*/ * update_funcs; int /*<<< orphan*/  freed; int /*<<< orphan*/  invalidated_lock; int /*<<< orphan*/  invalidated; int /*<<< orphan*/  idle; int /*<<< orphan*/  moved; int /*<<< orphan*/  relocated; int /*<<< orphan*/  evicted; int /*<<< orphan*/ ** reserved_vmid; int /*<<< orphan*/  va; } ;
struct TYPE_10__ {int vm_update_mode; int /*<<< orphan*/  pasid_lock; int /*<<< orphan*/  pasid_idr; int /*<<< orphan*/  root_level; int /*<<< orphan*/  vm_pte_num_rqs; int /*<<< orphan*/  vm_pte_rqs; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ vm_manager; int /*<<< orphan*/  gmc; } ;
struct amdgpu_bo_param {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  resv; } ;
struct TYPE_9__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;
struct TYPE_13__ {struct TYPE_13__* shadow; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_CREATE_SHADOW ; 
 int AMDGPU_MAX_VMHUBS ; 
 int AMDGPU_VM_CONTEXT_COMPUTE ; 
 int AMDGPU_VM_USE_CPU_FOR_COMPUTE ; 
 int AMDGPU_VM_USE_CPU_FOR_GFX ; 
 scalar_t__ CHIP_RAVEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ; 
 int FUNC5 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,struct amdgpu_vm*,struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,struct amdgpu_vm*,int /*<<< orphan*/ ,struct amdgpu_bo_param*) ; 
 int FUNC11 (struct amdgpu_device*,struct amdgpu_vm*,struct amdgpu_bo*) ; 
 int /*<<< orphan*/  amdgpu_vm_cpu_funcs ; 
 int /*<<< orphan*/  amdgpu_vm_sdma_funcs ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct amdgpu_vm*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC19(struct amdgpu_device *adev, struct amdgpu_vm *vm,
		   int vm_context, unsigned int pasid)
{
	struct amdgpu_bo_param bp;
	struct amdgpu_bo *root;
	int r, i;

	vm->va = RB_ROOT_CACHED;
	for (i = 0; i < AMDGPU_MAX_VMHUBS; i++)
		vm->reserved_vmid[i] = NULL;
	FUNC2(&vm->evicted);
	FUNC2(&vm->relocated);
	FUNC2(&vm->moved);
	FUNC2(&vm->idle);
	FUNC2(&vm->invalidated);
	FUNC16(&vm->invalidated_lock);
	FUNC2(&vm->freed);

	/* create scheduler entity for page table updates */
	r = FUNC14(&vm->entity, adev->vm_manager.vm_pte_rqs,
				  adev->vm_manager.vm_pte_num_rqs, NULL);
	if (r)
		return r;

	vm->pte_support_ats = false;

	if (vm_context == AMDGPU_VM_CONTEXT_COMPUTE) {
		vm->use_cpu_for_update = !!(adev->vm_manager.vm_update_mode &
						AMDGPU_VM_USE_CPU_FOR_COMPUTE);

		if (adev->asic_type == CHIP_RAVEN)
			vm->pte_support_ats = true;
	} else {
		vm->use_cpu_for_update = !!(adev->vm_manager.vm_update_mode &
						AMDGPU_VM_USE_CPU_FOR_GFX);
	}
	FUNC0("VM update mode is %s\n",
			 vm->use_cpu_for_update ? "CPU" : "SDMA");
	FUNC3((vm->use_cpu_for_update && !FUNC8(&adev->gmc)),
		  "CPU update of VM recommended only for large BAR system\n");

	if (vm->use_cpu_for_update)
		vm->update_funcs = &amdgpu_vm_cpu_funcs;
	else
		vm->update_funcs = &amdgpu_vm_sdma_funcs;
	vm->last_update = NULL;

	FUNC10(adev, vm, adev->vm_manager.root_level, &bp);
	if (vm_context == AMDGPU_VM_CONTEXT_COMPUTE)
		bp.flags &= ~AMDGPU_GEM_CREATE_SHADOW;
	r = FUNC4(adev, &bp, &root);
	if (r)
		goto error_free_sched_entity;

	r = FUNC5(root, true);
	if (r)
		goto error_free_root;

	r = FUNC12(root->tbo.base.resv, 1);
	if (r)
		goto error_unreserve;

	FUNC9(&vm->root.base, vm, root);

	r = FUNC11(adev, vm, root);
	if (r)
		goto error_unreserve;

	FUNC7(vm->root.base.bo);

	if (pasid) {
		unsigned long flags;

		FUNC17(&adev->vm_manager.pasid_lock, flags);
		r = FUNC15(&adev->vm_manager.pasid_idr, vm, pasid, pasid + 1,
			      GFP_ATOMIC);
		FUNC18(&adev->vm_manager.pasid_lock, flags);
		if (r < 0)
			goto error_free_root;

		vm->pasid = pasid;
	}

	FUNC1(vm->faults);

	return 0;

error_unreserve:
	FUNC7(vm->root.base.bo);

error_free_root:
	FUNC6(&vm->root.base.bo->shadow);
	FUNC6(&vm->root.base.bo);
	vm->root.base.bo = NULL;

error_free_sched_entity:
	FUNC13(&vm->entity);

	return r;
}