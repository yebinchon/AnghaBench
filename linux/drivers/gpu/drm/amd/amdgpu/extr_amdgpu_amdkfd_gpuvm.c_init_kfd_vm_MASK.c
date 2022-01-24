#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct dma_fence {int dummy; } ;
struct amdkfd_process_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  pid; TYPE_12__* eviction_fence; int /*<<< orphan*/  restore_userptr_work; int /*<<< orphan*/  evicted_bos; int /*<<< orphan*/  userptr_inval_list; int /*<<< orphan*/  userptr_valid_list; int /*<<< orphan*/  kfd_bo_list; int /*<<< orphan*/  vm_list_head; } ;
struct TYPE_17__ {TYPE_8__* bo; } ;
struct TYPE_18__ {TYPE_4__ base; } ;
struct amdgpu_vm {TYPE_6__* process_info; TYPE_5__ root; int /*<<< orphan*/  vm_list_node; } ;
struct TYPE_14__ {int /*<<< orphan*/  resv; } ;
struct TYPE_15__ {TYPE_1__ base; } ;
struct TYPE_21__ {TYPE_2__ tbo; } ;
struct TYPE_20__ {int /*<<< orphan*/  group_leader; int /*<<< orphan*/  mm; } ;
struct TYPE_19__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  n_vms; int /*<<< orphan*/  vm_list_head; TYPE_3__* eviction_fence; } ;
struct TYPE_16__ {int /*<<< orphan*/  base; } ;
struct TYPE_13__ {struct dma_fence base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_FENCE_OWNER_KFD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 TYPE_12__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amdgpu_amdkfd_restore_userptr_worker ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_8__*,int) ; 
 int FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_7__* current ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct dma_fence* FUNC9 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_fence*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct amdkfd_process_info*) ; 
 struct amdkfd_process_info* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct amdgpu_vm*) ; 

__attribute__((used)) static int FUNC23(struct amdgpu_vm *vm, void **process_info,
		       struct dma_fence **ef)
{
	struct amdkfd_process_info *info = NULL;
	int ret;

	if (!*process_info) {
		info = FUNC14(sizeof(*info), GFP_KERNEL);
		if (!info)
			return -ENOMEM;

		FUNC17(&info->lock);
		FUNC1(&info->vm_list_head);
		FUNC1(&info->kfd_bo_list);
		FUNC1(&info->userptr_valid_list);
		FUNC1(&info->userptr_inval_list);

		info->eviction_fence =
			FUNC2(FUNC8(1),
						   current->mm);
		if (!info->eviction_fence) {
			FUNC20("Failed to create eviction fence\n");
			ret = -ENOMEM;
			goto create_evict_fence_fail;
		}

		info->pid = FUNC12(current->group_leader, PIDTYPE_PID);
		FUNC7(&info->evicted_bos, 0);
		FUNC0(&info->restore_userptr_work,
				  amdgpu_amdkfd_restore_userptr_worker);

		*process_info = info;
		*ef = FUNC9(&info->eviction_fence->base);
	}

	vm->process_info = *process_info;

	/* Validate page directory and attach eviction fence */
	ret = FUNC4(vm->root.base.bo, true);
	if (ret)
		goto reserve_pd_fail;
	ret = FUNC22(vm);
	if (ret) {
		FUNC20("validate_pt_pd_bos() failed\n");
		goto validate_pd_fail;
	}
	ret = FUNC5(vm->root.base.bo,
				  AMDGPU_FENCE_OWNER_KFD, false);
	if (ret)
		goto wait_pd_fail;
	ret = FUNC11(vm->root.base.bo->tbo.base.resv, 1);
	if (ret)
		goto reserve_shared_fail;
	FUNC3(vm->root.base.bo,
			&vm->process_info->eviction_fence->base, true);
	FUNC6(vm->root.base.bo);

	/* Update process info */
	FUNC18(&vm->process_info->lock);
	FUNC15(&vm->vm_list_node,
			&(vm->process_info->vm_list_head));
	vm->process_info->n_vms++;
	FUNC19(&vm->process_info->lock);

	return 0;

reserve_shared_fail:
wait_pd_fail:
validate_pd_fail:
	FUNC6(vm->root.base.bo);
reserve_pd_fail:
	vm->process_info = NULL;
	if (info) {
		/* Two fence references: one in info and one in *ef */
		FUNC10(&info->eviction_fence->base);
		FUNC10(*ef);
		*ef = NULL;
		*process_info = NULL;
		FUNC21(info->pid);
create_evict_fence_fail:
		FUNC16(&info->lock);
		FUNC13(info);
	}
	return ret;
}