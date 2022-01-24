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
typedef  int u32 ;
struct amdgpu_ring {scalar_t__ me; } ;

/* Variables and functions */
 int GPU_HDP_FLUSH_DONE__SDMA0_MASK ; 
 int GPU_HDP_FLUSH_DONE__SDMA1_MASK ; 
 int /*<<< orphan*/  SDMA_OPCODE_POLL_REG_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int mmGPU_HDP_FLUSH_DONE ; 
 int mmGPU_HDP_FLUSH_REQ ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring)
{
	u32 extra_bits = (FUNC2(1) |
			  FUNC1(3)); /* == */
	u32 ref_and_mask;

	if (ring->me == 0)
		ref_and_mask = GPU_HDP_FLUSH_DONE__SDMA0_MASK;
	else
		ref_and_mask = GPU_HDP_FLUSH_DONE__SDMA1_MASK;

	FUNC3(ring, FUNC0(SDMA_OPCODE_POLL_REG_MEM, 0, extra_bits));
	FUNC3(ring, mmGPU_HDP_FLUSH_DONE << 2);
	FUNC3(ring, mmGPU_HDP_FLUSH_REQ << 2);
	FUNC3(ring, ref_and_mask); /* reference */
	FUNC3(ring, ref_and_mask); /* mask */
	FUNC3(ring, (0xfff << 16) | 10); /* retry count, poll interval */
}