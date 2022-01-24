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
typedef  int /*<<< orphan*/  uint64_t ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_POLL_REG_MEM ; 
 int VM_INVALIDATE_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring,
				      unsigned vmid, uint64_t pd_addr)
{
	FUNC1(ring, vmid, pd_addr);

	/* wait for invalidate to complete */
	FUNC2(ring, FUNC0(DMA_PACKET_POLL_REG_MEM, 0, 0, 0, 0));
	FUNC2(ring, VM_INVALIDATE_REQUEST);
	FUNC2(ring, 0xff << 16); /* retry */
	FUNC2(ring, 1 << vmid); /* mask */
	FUNC2(ring, 0); /* value */
	FUNC2(ring, (0 << 28) | 0x20); /* func(always) | poll interval */
}