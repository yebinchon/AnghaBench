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
struct amdgpu_vmid_mgr {unsigned int num_ids; int /*<<< orphan*/  ids_lru; TYPE_2__* ids; int /*<<< orphan*/  reserved_vmid_num; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 unsigned int AMDGPU_MAX_VMHUBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct amdgpu_device *adev)
{
	unsigned i, j;

	for (i = 0; i < AMDGPU_MAX_VMHUBS; ++i) {
		struct amdgpu_vmid_mgr *id_mgr =
			&adev->vm_manager.id_mgr[i];

		FUNC5(&id_mgr->lock);
		FUNC0(&id_mgr->ids_lru);
		FUNC3(&id_mgr->reserved_vmid_num, 0);

		/* skip over VMID 0, since it is the system VM */
		for (j = 1; j < id_mgr->num_ids; ++j) {
			FUNC2(adev, i, j);
			FUNC1(&id_mgr->ids[j].active);
			FUNC4(&id_mgr->ids[j].list, &id_mgr->ids_lru);
		}
	}
}