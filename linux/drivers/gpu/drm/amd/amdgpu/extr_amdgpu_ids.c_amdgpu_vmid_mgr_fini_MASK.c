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
struct amdgpu_vmid_mgr {struct amdgpu_vmid* ids; int /*<<< orphan*/  lock; } ;
struct amdgpu_vmid {int /*<<< orphan*/  pasid_mapping; int /*<<< orphan*/  last_flush; int /*<<< orphan*/  flushed_updates; int /*<<< orphan*/  active; } ;
struct TYPE_2__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;

/* Variables and functions */
 unsigned int AMDGPU_MAX_VMHUBS ; 
 unsigned int AMDGPU_NUM_VMID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct amdgpu_device *adev)
{
	unsigned i, j;

	for (i = 0; i < AMDGPU_MAX_VMHUBS; ++i) {
		struct amdgpu_vmid_mgr *id_mgr =
			&adev->vm_manager.id_mgr[i];

		FUNC2(&id_mgr->lock);
		for (j = 0; j < AMDGPU_NUM_VMID; ++j) {
			struct amdgpu_vmid *id = &id_mgr->ids[j];

			FUNC0(&id->active);
			FUNC1(id->flushed_updates);
			FUNC1(id->last_flush);
			FUNC1(id->pasid_mapping);
		}
	}
}