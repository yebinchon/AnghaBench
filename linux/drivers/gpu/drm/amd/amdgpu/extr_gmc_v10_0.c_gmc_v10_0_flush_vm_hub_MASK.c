#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int u32 ;
struct amdgpu_vmhub {scalar_t__ vm_inv_eng0_ack; scalar_t__ vm_inv_eng0_req; } ;
struct amdgpu_device {unsigned int usec_timeout; struct amdgpu_vmhub* vmhub; } ;

/* Variables and functions */
 unsigned int AMDGPU_GFXHUB_0 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev, uint32_t vmid,
				   unsigned int vmhub, uint32_t flush_type)
{
	struct amdgpu_vmhub *hub = &adev->vmhub[vmhub];
	u32 tmp = FUNC3(vmid, flush_type);
	/* Use register 17 for GART */
	const unsigned eng = 17;
	unsigned int i;

	FUNC2(hub->vm_inv_eng0_req + eng, tmp);

	/*
	 * Issue a dummy read to wait for the ACK register to be cleared
	 * to avoid a false ACK due to the new fast GRBM interface.
	 */
	if (vmhub == AMDGPU_GFXHUB_0)
		FUNC1(hub->vm_inv_eng0_req + eng);

	/* Wait for ACK with a delay.*/
	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC1(hub->vm_inv_eng0_ack + eng);
		tmp &= 1 << vmid;
		if (tmp)
			break;

		FUNC4(1);
	}

	if (i < adev->usec_timeout)
		return;

	FUNC0("Timeout waiting for VM flush ACK!\n");
}