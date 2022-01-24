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
struct amdgpu_vm_bo_base {struct amdgpu_vm_bo_base* next; int /*<<< orphan*/  vm_status; struct amdgpu_bo* bo; struct amdgpu_vm* vm; } ;
struct TYPE_13__ {TYPE_4__* bo; } ;
struct TYPE_14__ {TYPE_5__ base; } ;
struct amdgpu_vm {int bulk_moveable; TYPE_6__ root; } ;
struct TYPE_15__ {int /*<<< orphan*/  mem_type; } ;
struct TYPE_9__ {scalar_t__ resv; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_7__ mem; TYPE_1__ base; } ;
struct amdgpu_bo {int preferred_domains; TYPE_8__ tbo; scalar_t__ parent; struct amdgpu_vm_bo_base* vm_bo; } ;
struct TYPE_10__ {scalar_t__ resv; } ;
struct TYPE_11__ {TYPE_2__ base; } ;
struct TYPE_12__ {TYPE_3__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_vm_bo_base*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_vm_bo_base*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_vm_bo_base*) ; 
 scalar_t__ ttm_bo_type_kernel ; 

__attribute__((used)) static void FUNC5(struct amdgpu_vm_bo_base *base,
				   struct amdgpu_vm *vm,
				   struct amdgpu_bo *bo)
{
	base->vm = vm;
	base->bo = bo;
	base->next = NULL;
	FUNC0(&base->vm_status);

	if (!bo)
		return;
	base->next = bo->vm_bo;
	bo->vm_bo = base;

	if (bo->tbo.base.resv != vm->root.base.bo->tbo.base.resv)
		return;

	vm->bulk_moveable = false;
	if (bo->tbo.type == ttm_bo_type_kernel && bo->parent)
		FUNC4(base);
	else
		FUNC3(base);

	if (bo->preferred_domains &
	    FUNC1(bo->tbo.mem.mem_type))
		return;

	/*
	 * we checked all the prerequisites, but it looks like this per vm bo
	 * is currently evicted. add the bo to the evicted list to make sure it
	 * is validated on next vm use to avoid fault.
	 * */
	FUNC2(base);
}