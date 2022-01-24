#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_vm {int dummy; } ;
struct TYPE_4__ {int xgmi_map_counter; int /*<<< orphan*/  lock_pstate; } ;
struct amdgpu_device {TYPE_2__ vm_manager; } ;
struct amdgpu_bo_va {int ref_count; int is_xgmi; int /*<<< orphan*/  invalids; int /*<<< orphan*/  valids; int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {int preferred_domains; TYPE_1__ tbo; } ;

/* Variables and functions */
 int AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct amdgpu_vm*,struct amdgpu_bo*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 struct amdgpu_bo_va* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct amdgpu_bo_va *FUNC8(struct amdgpu_device *adev,
				      struct amdgpu_vm *vm,
				      struct amdgpu_bo *bo)
{
	struct amdgpu_bo_va *bo_va;

	bo_va = FUNC5(sizeof(struct amdgpu_bo_va), GFP_KERNEL);
	if (bo_va == NULL) {
		return NULL;
	}
	FUNC2(&bo_va->base, vm, bo);

	bo_va->ref_count = 1;
	FUNC0(&bo_va->valids);
	FUNC0(&bo_va->invalids);

	if (bo && FUNC3(adev, FUNC1(bo->tbo.bdev)) &&
	    (bo->preferred_domains & AMDGPU_GEM_DOMAIN_VRAM)) {
		bo_va->is_xgmi = true;
		FUNC6(&adev->vm_manager.lock_pstate);
		/* Power up XGMI if it can be potentially used */
		if (++adev->vm_manager.xgmi_map_counter == 1)
			FUNC4(adev, 1);
		FUNC7(&adev->vm_manager.lock_pstate);
	}

	return bo_va;
}