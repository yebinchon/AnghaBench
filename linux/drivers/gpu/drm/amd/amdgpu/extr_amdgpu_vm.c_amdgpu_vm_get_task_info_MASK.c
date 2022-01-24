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
struct amdgpu_task_info {int dummy; } ;
struct amdgpu_vm {struct amdgpu_task_info task_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  pasid_lock; int /*<<< orphan*/  pasid_idr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;

/* Variables and functions */
 struct amdgpu_vm* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct amdgpu_device *adev, unsigned int pasid,
			 struct amdgpu_task_info *task_info)
{
	struct amdgpu_vm *vm;
	unsigned long flags;

	FUNC1(&adev->vm_manager.pasid_lock, flags);

	vm = FUNC0(&adev->vm_manager.pasid_idr, pasid);
	if (vm)
		*task_info = vm->task_info;

	FUNC2(&adev->vm_manager.pasid_lock, flags);
}