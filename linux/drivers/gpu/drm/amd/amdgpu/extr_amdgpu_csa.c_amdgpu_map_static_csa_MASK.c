#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ww_acquire_ctx {int dummy; } ;
struct list_head {int dummy; } ;
struct ttm_validate_buffer {int num_shared; struct list_head head; int /*<<< orphan*/ * bo; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va {int dummy; } ;
struct amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_bo {int /*<<< orphan*/  tbo; } ;

/* Variables and functions */
 int AMDGPU_PTE_EXECUTABLE ; 
 int AMDGPU_PTE_READABLE ; 
 int AMDGPU_PTE_WRITEABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct amdgpu_bo_va* FUNC2 (struct amdgpu_device*,struct amdgpu_vm*,struct amdgpu_bo*) ; 
 int FUNC3 (struct amdgpu_device*,struct amdgpu_bo_va*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,struct amdgpu_bo_va*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_vm*,struct list_head*,struct amdgpu_bo_list_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct ww_acquire_ctx*,struct list_head*) ; 
 int FUNC8 (struct ww_acquire_ctx*,struct list_head*,int,int /*<<< orphan*/ *,int) ; 

int FUNC9(struct amdgpu_device *adev, struct amdgpu_vm *vm,
			  struct amdgpu_bo *bo, struct amdgpu_bo_va **bo_va,
			  uint64_t csa_addr, uint32_t size)
{
	struct ww_acquire_ctx ticket;
	struct list_head list;
	struct amdgpu_bo_list_entry pd;
	struct ttm_validate_buffer csa_tv;
	int r;

	FUNC1(&list);
	FUNC1(&csa_tv.head);
	csa_tv.bo = &bo->tbo;
	csa_tv.num_shared = 1;

	FUNC6(&csa_tv.head, &list);
	FUNC5(vm, &list, &pd);

	r = FUNC8(&ticket, &list, true, NULL, false);
	if (r) {
		FUNC0("failed to reserve CSA,PD BOs: err=%d\n", r);
		return r;
	}

	*bo_va = FUNC2(adev, vm, bo);
	if (!*bo_va) {
		FUNC7(&ticket, &list);
		FUNC0("failed to create bo_va for static CSA\n");
		return -ENOMEM;
	}

	r = FUNC3(adev, *bo_va, csa_addr, 0, size,
			     AMDGPU_PTE_READABLE | AMDGPU_PTE_WRITEABLE |
			     AMDGPU_PTE_EXECUTABLE);

	if (r) {
		FUNC0("failed to do bo_map on static CSA, err=%d\n", r);
		FUNC4(adev, *bo_va);
		FUNC7(&ticket, &list);
		return r;
	}

	FUNC7(&ticket, &list);
	return 0;
}