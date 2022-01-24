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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SDMA_OP_FENCE ; 
 int /*<<< orphan*/  SDMA_OP_TRAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring, u64 addr, u64 seq,
				      unsigned flags)
{
	bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
	/* write the fence */
	FUNC3(ring, FUNC1(SDMA_OP_FENCE));
	/* zero in first two bits */
	FUNC0(addr & 0x3);
	FUNC3(ring, FUNC4(addr));
	FUNC3(ring, FUNC5(addr));
	FUNC3(ring, FUNC4(seq));

	/* optionally write high bits as well */
	if (write64bit) {
		addr += 4;
		FUNC3(ring, FUNC1(SDMA_OP_FENCE));
		/* zero in first two bits */
		FUNC0(addr & 0x3);
		FUNC3(ring, FUNC4(addr));
		FUNC3(ring, FUNC5(addr));
		FUNC3(ring, FUNC5(seq));
	}

	/* generate an interrupt */
	FUNC3(ring, FUNC1(SDMA_OP_TRAP));
	FUNC3(ring, FUNC2(0));
}