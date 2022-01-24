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
 int /*<<< orphan*/  GPU_HDP_FLUSH_DONE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDMA0 ; 
 int /*<<< orphan*/  SDMA1 ; 
 int /*<<< orphan*/  SDMA_OP_POLL_REGMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int mmGPU_HDP_FLUSH_DONE ; 
 int mmGPU_HDP_FLUSH_REQ ; 

__attribute__((used)) static void FUNC7(struct amdgpu_ring *ring)
{
	u32 ref_and_mask = 0;

	if (ring->me == 0)
		ref_and_mask = FUNC0(ref_and_mask, GPU_HDP_FLUSH_DONE, SDMA0, 1);
	else
		ref_and_mask = FUNC0(ref_and_mask, GPU_HDP_FLUSH_DONE, SDMA1, 1);

	FUNC6(ring, FUNC1(SDMA_OP_POLL_REGMEM) |
			  FUNC5(1) |
			  FUNC4(3)); /* == */
	FUNC6(ring, mmGPU_HDP_FLUSH_DONE << 2);
	FUNC6(ring, mmGPU_HDP_FLUSH_REQ << 2);
	FUNC6(ring, ref_and_mask); /* reference */
	FUNC6(ring, ref_and_mask); /* mask */
	FUNC6(ring, FUNC3(0xfff) |
			  FUNC2(10)); /* retry count, poll interval */
}