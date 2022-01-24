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
 int /*<<< orphan*/  SDMA_OPCODE_FENCE ; 
 int /*<<< orphan*/  SDMA_OPCODE_TRAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring, u64 addr, u64 seq,
				     unsigned flags)
{
	bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
	/* write the fence */
	FUNC1(ring, FUNC0(SDMA_OPCODE_FENCE, 0, 0));
	FUNC1(ring, FUNC2(addr));
	FUNC1(ring, FUNC3(addr));
	FUNC1(ring, FUNC2(seq));

	/* optionally write high bits as well */
	if (write64bit) {
		addr += 4;
		FUNC1(ring, FUNC0(SDMA_OPCODE_FENCE, 0, 0));
		FUNC1(ring, FUNC2(addr));
		FUNC1(ring, FUNC3(addr));
		FUNC1(ring, FUNC3(seq));
	}

	/* generate an interrupt */
	FUNC1(ring, FUNC0(SDMA_OPCODE_TRAP, 0, 0));
}