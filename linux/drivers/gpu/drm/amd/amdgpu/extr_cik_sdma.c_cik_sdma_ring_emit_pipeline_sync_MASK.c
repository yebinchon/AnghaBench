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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int sync_seq; int gpu_addr; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_OPCODE_POLL_REG_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int SDMA_POLL_REG_MEM_EXTRA_M ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_ring *ring)
{
	uint32_t seq = ring->fence_drv.sync_seq;
	uint64_t addr = ring->fence_drv.gpu_addr;

	/* wait for idle */
	FUNC3(ring, FUNC0(SDMA_OPCODE_POLL_REG_MEM, 0,
					    FUNC2(0) |
					    FUNC1(3) | /* equal */
					    SDMA_POLL_REG_MEM_EXTRA_M));
	FUNC3(ring, addr & 0xfffffffc);
	FUNC3(ring, FUNC4(addr) & 0xffffffff);
	FUNC3(ring, seq); /* reference */
	FUNC3(ring, 0xffffffff); /* mask */
	FUNC3(ring, (0xfff << 16) | 4); /* retry count, poll interval */
}