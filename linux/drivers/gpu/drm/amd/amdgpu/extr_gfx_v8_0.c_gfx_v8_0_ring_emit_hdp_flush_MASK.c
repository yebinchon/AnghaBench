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
typedef  int u32 ;
struct amdgpu_ring {int me; int pipe; TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_RING_TYPE_COMPUTE ; 
 scalar_t__ AMDGPU_RING_TYPE_KIQ ; 
 int GPU_HDP_FLUSH_DONE__CP0_MASK ; 
 int GPU_HDP_FLUSH_DONE__CP2_MASK ; 
 int GPU_HDP_FLUSH_DONE__CP6_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int) ; 
 int mmGPU_HDP_FLUSH_DONE ; 
 int mmGPU_HDP_FLUSH_REQ ; 

__attribute__((used)) static void FUNC5(struct amdgpu_ring *ring)
{
	u32 ref_and_mask, reg_mem_engine;

	if ((ring->funcs->type == AMDGPU_RING_TYPE_COMPUTE) ||
	    (ring->funcs->type == AMDGPU_RING_TYPE_KIQ)) {
		switch (ring->me) {
		case 1:
			ref_and_mask = GPU_HDP_FLUSH_DONE__CP2_MASK << ring->pipe;
			break;
		case 2:
			ref_and_mask = GPU_HDP_FLUSH_DONE__CP6_MASK << ring->pipe;
			break;
		default:
			return;
		}
		reg_mem_engine = 0;
	} else {
		ref_and_mask = GPU_HDP_FLUSH_DONE__CP0_MASK;
		reg_mem_engine = FUNC1(1); /* pfp */
	}

	FUNC4(ring, FUNC0(PACKET3_WAIT_REG_MEM, 5));
	FUNC4(ring, (FUNC3(1) | /* write, wait, write */
				 FUNC2(3) |  /* == */
				 reg_mem_engine));
	FUNC4(ring, mmGPU_HDP_FLUSH_REQ);
	FUNC4(ring, mmGPU_HDP_FLUSH_DONE);
	FUNC4(ring, ref_and_mask);
	FUNC4(ring, ref_and_mask);
	FUNC4(ring, 0x20); /* poll interval */
}