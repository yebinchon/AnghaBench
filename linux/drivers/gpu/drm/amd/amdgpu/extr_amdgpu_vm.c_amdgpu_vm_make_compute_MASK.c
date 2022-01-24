#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* bo; } ;
struct TYPE_9__ {TYPE_2__ base; } ;
struct amdgpu_vm {int pte_support_ats; int use_cpu_for_update; int pasid; TYPE_3__ root; int /*<<< orphan*/ * last_update; int /*<<< orphan*/ * update_funcs; } ;
struct TYPE_7__ {int vm_update_mode; int /*<<< orphan*/  pasid_lock; int /*<<< orphan*/  pasid_idr; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ vm_manager; int /*<<< orphan*/  gmc; } ;
struct TYPE_10__ {int /*<<< orphan*/  shadow; } ;

/* Variables and functions */
 int AMDGPU_VM_USE_CPU_FOR_COMPUTE ; 
 scalar_t__ CHIP_RAVEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int FUNC7 (struct amdgpu_device*,struct amdgpu_vm*) ; 
 int FUNC8 (struct amdgpu_device*,struct amdgpu_vm*,TYPE_4__*) ; 
 int /*<<< orphan*/  amdgpu_vm_cpu_funcs ; 
 int /*<<< orphan*/  amdgpu_vm_sdma_funcs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct amdgpu_vm*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC14(struct amdgpu_device *adev, struct amdgpu_vm *vm, unsigned int pasid)
{
	bool pte_support_ats = (adev->asic_type == CHIP_RAVEN);
	int r;

	r = FUNC2(vm->root.base.bo, true);
	if (r)
		return r;

	/* Sanity checks */
	r = FUNC7(adev, vm);
	if (r)
		goto unreserve_bo;

	if (pasid) {
		unsigned long flags;

		FUNC12(&adev->vm_manager.pasid_lock, flags);
		r = FUNC10(&adev->vm_manager.pasid_idr, vm, pasid, pasid + 1,
			      GFP_ATOMIC);
		FUNC13(&adev->vm_manager.pasid_lock, flags);

		if (r == -ENOSPC)
			goto unreserve_bo;
		r = 0;
	}

	/* Check if PD needs to be reinitialized and do it before
	 * changing any other state, in case it fails.
	 */
	if (pte_support_ats != vm->pte_support_ats) {
		vm->pte_support_ats = pte_support_ats;
		r = FUNC8(adev, vm, vm->root.base.bo);
		if (r)
			goto free_idr;
	}

	/* Update VM state */
	vm->use_cpu_for_update = !!(adev->vm_manager.vm_update_mode &
				    AMDGPU_VM_USE_CPU_FOR_COMPUTE);
	FUNC0("VM update mode is %s\n",
			 vm->use_cpu_for_update ? "CPU" : "SDMA");
	FUNC1((vm->use_cpu_for_update && !FUNC5(&adev->gmc)),
		  "CPU update of VM recommended only for large BAR system\n");

	if (vm->use_cpu_for_update)
		vm->update_funcs = &amdgpu_vm_cpu_funcs;
	else
		vm->update_funcs = &amdgpu_vm_sdma_funcs;
	FUNC9(vm->last_update);
	vm->last_update = NULL;

	if (vm->pasid) {
		unsigned long flags;

		FUNC12(&adev->vm_manager.pasid_lock, flags);
		FUNC11(&adev->vm_manager.pasid_idr, vm->pasid);
		FUNC13(&adev->vm_manager.pasid_lock, flags);

		/* Free the original amdgpu allocated pasid
		 * Will be replaced with kfd allocated pasid
		 */
		FUNC6(vm->pasid);
		vm->pasid = 0;
	}

	/* Free the shadow bo for compute VM */
	FUNC3(&vm->root.base.bo->shadow);

	if (pasid)
		vm->pasid = pasid;

	goto unreserve_bo;

free_idr:
	if (pasid) {
		unsigned long flags;

		FUNC12(&adev->vm_manager.pasid_lock, flags);
		FUNC11(&adev->vm_manager.pasid_idr, pasid);
		FUNC13(&adev->vm_manager.pasid_lock, flags);
	}
unreserve_bo:
	FUNC4(vm->root.base.bo);
	return r;
}