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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {int flags; TYPE_2__* vma; } ;
struct TYPE_6__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {int /*<<< orphan*/ * moving; TYPE_3__ base; } ;
struct TYPE_5__ {TYPE_1__* vm_mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FAULT_FLAG_ALLOW_RETRY ; 
 int FAULT_FLAG_RETRY_NOWAIT ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_RETRY ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_buffer_object*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_fault_t FUNC9(struct ttm_buffer_object *bo,
				struct vm_fault *vmf)
{
	vm_fault_t ret = 0;
	int err = 0;

	if (FUNC4(!bo->moving))
		goto out_unlock;

	/*
	 * Quick non-stalling check for idle.
	 */
	if (FUNC0(bo->moving))
		goto out_clear;

	/*
	 * If possible, avoid waiting for GPU with mmap_sem
	 * held.
	 */
	if (vmf->flags & FAULT_FLAG_ALLOW_RETRY) {
		ret = VM_FAULT_RETRY;
		if (vmf->flags & FAULT_FLAG_RETRY_NOWAIT)
			goto out_unlock;

		FUNC5(bo);
		FUNC8(&vmf->vma->vm_mm->mmap_sem);
		(void) FUNC2(bo->moving, true);
		FUNC3(bo->base.resv);
		FUNC6(bo);
		goto out_unlock;
	}

	/*
	 * Ordinary wait.
	 */
	err = FUNC2(bo->moving, true);
	if (FUNC7(err != 0)) {
		ret = (err != -ERESTARTSYS) ? VM_FAULT_SIGBUS :
			VM_FAULT_NOPAGE;
		goto out_unlock;
	}

out_clear:
	FUNC1(bo->moving);
	bo->moving = NULL;

out_unlock:
	return ret;
}