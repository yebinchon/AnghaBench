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
struct kfd_bo_va_list {int /*<<< orphan*/  va; struct amdgpu_bo_va* bo_va; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {struct amdgpu_vm* vm; } ;
struct amdgpu_bo_va {int /*<<< orphan*/  last_pt_update; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct amdgpu_sync*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_bo_va*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct amdgpu_vm*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
				struct kfd_bo_va_list *entry,
				struct amdgpu_sync *sync)
{
	struct amdgpu_bo_va *bo_va = entry->bo_va;
	struct amdgpu_vm *vm = bo_va->base.vm;

	FUNC1(adev, bo_va, entry->va);

	FUNC2(adev, vm, &bo_va->last_pt_update);

	FUNC0(NULL, sync, bo_va->last_pt_update, false);

	return 0;
}