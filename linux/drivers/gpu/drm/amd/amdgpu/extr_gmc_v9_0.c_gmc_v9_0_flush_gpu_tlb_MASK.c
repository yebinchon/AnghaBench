#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  scalar_t__ u32 ;
struct amdgpu_vmhub {size_t vm_inv_eng0_req; size_t vm_inv_eng0_ack; } ;
struct TYPE_10__ {int /*<<< orphan*/  invalidate_lock; } ;
struct TYPE_6__ {scalar_t__ ready; } ;
struct TYPE_7__ {TYPE_1__ sched; } ;
struct TYPE_8__ {TYPE_2__ ring; } ;
struct TYPE_9__ {TYPE_3__ kiq; } ;
struct amdgpu_device {size_t num_vmhubs; scalar_t__ usec_timeout; TYPE_5__ gmc; int /*<<< orphan*/  in_gpu_reset; TYPE_4__ gfx; struct amdgpu_vmhub* vmhub; } ;

/* Variables and functions */
 size_t AMDGPU_GFXHUB_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,scalar_t__) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,size_t,size_t,scalar_t__,int) ; 
 scalar_t__ FUNC7 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct amdgpu_device *adev, uint32_t vmid,
					uint32_t vmhub, uint32_t flush_type)
{
	const unsigned eng = 17;
	u32 j, tmp;
	struct amdgpu_vmhub *hub;

	FUNC0(vmhub >= adev->num_vmhubs);

	hub = &adev->vmhub[vmhub];
	tmp = FUNC7(vmid, flush_type);

	/* This is necessary for a HW workaround under SRIOV as well
	 * as GFXOFF under bare metal
	 */
	if (adev->gfx.kiq.ring.sched.ready &&
			(FUNC4(adev) || !FUNC5(adev)) &&
			!adev->in_gpu_reset) {
		uint32_t req = hub->vm_inv_eng0_req + eng;
		uint32_t ack = hub->vm_inv_eng0_ack + eng;

		FUNC6(adev, req, ack, tmp,
				1 << vmid);
		return;
	}

	FUNC8(&adev->gmc.invalidate_lock);
	FUNC3(hub->vm_inv_eng0_req + eng, tmp);

	/*
	 * Issue a dummy read to wait for the ACK register to be cleared
	 * to avoid a false ACK due to the new fast GRBM interface.
	 */
	if (vmhub == AMDGPU_GFXHUB_0)
		FUNC2(hub->vm_inv_eng0_req + eng);

	for (j = 0; j < adev->usec_timeout; j++) {
		tmp = FUNC2(hub->vm_inv_eng0_ack + eng);
		if (tmp & (1 << vmid))
			break;
		FUNC10(1);
	}
	FUNC9(&adev->gmc.invalidate_lock);
	if (j < adev->usec_timeout)
		return;

	FUNC1("Timeout waiting for VM flush ACK!\n");
}