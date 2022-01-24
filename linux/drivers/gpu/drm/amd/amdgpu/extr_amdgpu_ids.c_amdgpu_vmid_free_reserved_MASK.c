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
struct amdgpu_vmid_mgr {int /*<<< orphan*/  lock; int /*<<< orphan*/  reserved_vmid_num; int /*<<< orphan*/  ids_lru; } ;
struct amdgpu_vm {TYPE_1__** reserved_vmid; } ;
struct TYPE_4__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_2__ vm_manager; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct amdgpu_device *adev,
			       struct amdgpu_vm *vm,
			       unsigned vmhub)
{
	struct amdgpu_vmid_mgr *id_mgr = &adev->vm_manager.id_mgr[vmhub];

	FUNC2(&id_mgr->lock);
	if (vm->reserved_vmid[vmhub]) {
		FUNC1(&vm->reserved_vmid[vmhub]->list,
			&id_mgr->ids_lru);
		vm->reserved_vmid[vmhub] = NULL;
		FUNC0(&id_mgr->reserved_vmid_num);
	}
	FUNC3(&id_mgr->lock);
}