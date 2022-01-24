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
typedef  int u64 ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_FENCE ; 
 int /*<<< orphan*/  DMA_PACKET_TRAP ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring, u64 addr, u64 seq,
				      unsigned flags)
{

	bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
	/* write the fence */
	FUNC1(ring, FUNC0(DMA_PACKET_FENCE, 0, 0, 0, 0));
	FUNC1(ring, addr & 0xfffffffc);
	FUNC1(ring, (FUNC2(addr) & 0xff));
	FUNC1(ring, seq);
	/* optionally write high bits as well */
	if (write64bit) {
		addr += 4;
		FUNC1(ring, FUNC0(DMA_PACKET_FENCE, 0, 0, 0, 0));
		FUNC1(ring, addr & 0xfffffffc);
		FUNC1(ring, (FUNC2(addr) & 0xff));
		FUNC1(ring, FUNC2(seq));
	}
	/* generate an interrupt */
	FUNC1(ring, FUNC0(DMA_PACKET_TRAP, 0, 0, 0, 0));
}