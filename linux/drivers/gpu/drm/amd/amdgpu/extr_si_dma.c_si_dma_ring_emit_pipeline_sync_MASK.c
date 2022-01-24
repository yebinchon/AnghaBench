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
typedef  int uint32_t ;
struct TYPE_2__ {int sync_seq; int /*<<< orphan*/  gpu_addr; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_POLL_REG_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring)
{
	uint32_t seq = ring->fence_drv.sync_seq;
	uint64_t addr = ring->fence_drv.gpu_addr;

	/* wait for idle */
	FUNC1(ring, FUNC0(DMA_PACKET_POLL_REG_MEM, 0, 0, 0, 0) |
			  (1 << 27)); /* Poll memory */
	FUNC1(ring, FUNC2(addr));
	FUNC1(ring, (0xff << 16) | FUNC3(addr)); /* retry, addr_hi */
	FUNC1(ring, 0xffffffff); /* mask */
	FUNC1(ring, seq); /* value */
	FUNC1(ring, (3 << 28) | 0x20); /* func(equal) | poll interval */
}