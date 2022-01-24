#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct amdgpu_vm_update_params {TYPE_2__* adev; } ;
struct TYPE_7__ {struct amdgpu_bo* bo; } ;
struct amdgpu_vm_pt {struct amdgpu_vm_pt* entries; TYPE_3__ base; } ;
struct amdgpu_vm {TYPE_4__* update_funcs; } ;
struct amdgpu_bo {struct amdgpu_bo* parent; } ;
struct TYPE_8__ {int (* update ) (struct amdgpu_vm_update_params*,struct amdgpu_bo*,int,int,int,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_5__ {scalar_t__ root_level; } ;
struct TYPE_6__ {TYPE_1__ vm_manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*,unsigned int,int*,int*) ; 
 struct amdgpu_vm_pt* FUNC1 (struct amdgpu_vm_pt*) ; 
 int FUNC2 (struct amdgpu_vm_update_params*,struct amdgpu_bo*,int,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_vm_update_params *params,
				struct amdgpu_vm *vm,
				struct amdgpu_vm_pt *entry)
{
	struct amdgpu_vm_pt *parent = FUNC1(entry);
	struct amdgpu_bo *bo = parent->base.bo, *pbo;
	uint64_t pde, pt, flags;
	unsigned level;

	for (level = 0, pbo = bo->parent; pbo; ++level)
		pbo = pbo->parent;

	level += params->adev->vm_manager.root_level;
	FUNC0(entry->base.bo, level, &pt, &flags);
	pde = (entry - parent->entries) * 8;
	return vm->update_funcs->update(params, bo, pde, pt, 1, 0, flags);
}