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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct amdgpu_vmhub {int ctx0_ptb_addr_lo32; } ;
struct amdgpu_ring {TYPE_2__* funcs; TYPE_1__* adev; } ;
struct TYPE_4__ {size_t vmhub; } ;
struct TYPE_3__ {struct amdgpu_vmhub* vmhub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring,
		unsigned vmid, uint64_t pd_addr)
{
	struct amdgpu_vmhub *hub = &ring->adev->vmhub[ring->funcs->vmhub];
	uint32_t data0, data1, mask;

	pd_addr = FUNC0(ring, vmid, pd_addr);

	/* wait for register write */
	data0 = hub->ctx0_ptb_addr_lo32 + vmid * 2;
	data1 = FUNC1(pd_addr);
	mask = 0xffffffff;
	FUNC2(ring, data0, data1, mask);
}