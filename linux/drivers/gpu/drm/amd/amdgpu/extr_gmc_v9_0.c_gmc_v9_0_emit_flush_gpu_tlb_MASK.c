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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_vmhub {scalar_t__ vm_inv_eng0_ack; scalar_t__ vm_inv_eng0_req; scalar_t__ ctx0_ptb_addr_hi32; scalar_t__ ctx0_ptb_addr_lo32; } ;
struct amdgpu_ring {unsigned int vm_inv_eng; TYPE_1__* funcs; struct amdgpu_device* adev; } ;
struct amdgpu_device {struct amdgpu_vmhub* vmhub; } ;
struct TYPE_2__ {size_t vmhub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC5(struct amdgpu_ring *ring,
					    unsigned vmid, uint64_t pd_addr)
{
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_vmhub *hub = &adev->vmhub[ring->funcs->vmhub];
	uint32_t req = FUNC2(vmid, 0);
	unsigned eng = ring->vm_inv_eng;

	FUNC1(ring, hub->ctx0_ptb_addr_lo32 + (2 * vmid),
			      FUNC3(pd_addr));

	FUNC1(ring, hub->ctx0_ptb_addr_hi32 + (2 * vmid),
			      FUNC4(pd_addr));

	FUNC0(ring, hub->vm_inv_eng0_req + eng,
					    hub->vm_inv_eng0_ack + eng,
					    req, 1 << vmid);

	return pd_addr;
}