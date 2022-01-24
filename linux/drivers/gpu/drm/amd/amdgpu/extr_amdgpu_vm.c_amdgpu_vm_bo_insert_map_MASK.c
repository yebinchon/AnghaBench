#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_5__* bo; } ;
struct TYPE_15__ {TYPE_6__ base; } ;
struct amdgpu_vm {int /*<<< orphan*/  moved; TYPE_7__ root; int /*<<< orphan*/  va; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va_mapping {int flags; int /*<<< orphan*/  list; struct amdgpu_bo_va* bo_va; } ;
struct TYPE_16__ {int /*<<< orphan*/  vm_status; int /*<<< orphan*/  moved; struct amdgpu_bo* bo; struct amdgpu_vm* vm; } ;
struct amdgpu_bo_va {TYPE_8__ base; int /*<<< orphan*/  invalids; } ;
struct TYPE_9__ {scalar_t__ resv; } ;
struct TYPE_10__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;
struct TYPE_11__ {scalar_t__ resv; } ;
struct TYPE_12__ {TYPE_3__ base; } ;
struct TYPE_13__ {TYPE_4__ tbo; } ;

/* Variables and functions */
 int AMDGPU_PTE_PRT ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo_va_mapping*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo_va*,struct amdgpu_bo_va_mapping*) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev,
				    struct amdgpu_bo_va *bo_va,
				    struct amdgpu_bo_va_mapping *mapping)
{
	struct amdgpu_vm *vm = bo_va->base.vm;
	struct amdgpu_bo *bo = bo_va->base.bo;

	mapping->bo_va = bo_va;
	FUNC2(&mapping->list, &bo_va->invalids);
	FUNC0(mapping, &vm->va);

	if (mapping->flags & AMDGPU_PTE_PRT)
		FUNC1(adev);

	if (bo && bo->tbo.base.resv == vm->root.base.bo->tbo.base.resv &&
	    !bo_va->base.moved) {
		FUNC3(&bo_va->base.vm_status, &vm->moved);
	}
	FUNC4(bo_va, mapping);
}