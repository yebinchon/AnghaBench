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
 int /*<<< orphan*/  SDMA_OP_POLL_REGMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct amdgpu_ring *ring)
{
	uint32_t seq = ring->fence_drv.sync_seq;
	uint64_t addr = ring->fence_drv.gpu_addr;

	/* wait for idle */
	FUNC6(ring, FUNC0(SDMA_OP_POLL_REGMEM) |
			  FUNC4(0) |
			  FUNC3(3) | /* equal */
			  FUNC5(1));
	FUNC6(ring, addr & 0xfffffffc);
	FUNC6(ring, FUNC7(addr) & 0xffffffff);
	FUNC6(ring, seq); /* reference */
	FUNC6(ring, 0xffffffff); /* mask */
	FUNC6(ring, FUNC2(0xfff) |
			  FUNC1(4)); /* retry count, poll interval */
}