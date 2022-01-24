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
struct TYPE_2__ {int vm_update_mode; int /*<<< orphan*/  lock_pstate; scalar_t__ xgmi_map_counter; int /*<<< orphan*/  pasid_lock; int /*<<< orphan*/  pasid_idr; int /*<<< orphan*/  num_prt_users; int /*<<< orphan*/  prt_lock; scalar_t__* seqno; int /*<<< orphan*/  fence_context; } ;
struct amdgpu_device {TYPE_1__ vm_manager; int /*<<< orphan*/  gmc; } ;

/* Variables and functions */
 unsigned int AMDGPU_MAX_RINGS ; 
 int AMDGPU_VM_USE_CPU_FOR_COMPUTE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int amdgpu_vm_update_mode ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct amdgpu_device *adev)
{
	unsigned i;

	FUNC1(adev);

	adev->vm_manager.fence_context =
		FUNC3(AMDGPU_MAX_RINGS);
	for (i = 0; i < AMDGPU_MAX_RINGS; ++i)
		adev->vm_manager.seqno[i] = 0;

	FUNC6(&adev->vm_manager.prt_lock);
	FUNC2(&adev->vm_manager.num_prt_users, 0);

	/* If not overridden by the user, by default, only in large BAR systems
	 * Compute VM tables will be updated by CPU
	 */
#ifdef CONFIG_X86_64
	if (amdgpu_vm_update_mode == -1) {
		if (amdgpu_gmc_vram_full_visible(&adev->gmc))
			adev->vm_manager.vm_update_mode =
				AMDGPU_VM_USE_CPU_FOR_COMPUTE;
		else
			adev->vm_manager.vm_update_mode = 0;
	} else
		adev->vm_manager.vm_update_mode = amdgpu_vm_update_mode;
#else
	adev->vm_manager.vm_update_mode = 0;
#endif

	FUNC4(&adev->vm_manager.pasid_idr);
	FUNC6(&adev->vm_manager.pasid_lock);

	adev->vm_manager.xgmi_map_counter = 0;
	FUNC5(&adev->vm_manager.lock_pstate);
}