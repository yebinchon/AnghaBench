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
typedef  int uint32_t ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_OP_POLL_REGMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_ring *ring,
				   int mem_space, int hdp,
				   uint32_t addr0, uint32_t addr1,
				   uint32_t ref, uint32_t mask,
				   uint32_t inv)
{
	FUNC6(ring, FUNC0(SDMA_OP_POLL_REGMEM) |
			  FUNC4(hdp) |
			  FUNC5(mem_space) |
			  FUNC3(3)); /* == */
	if (mem_space) {
		/* memory */
		FUNC6(ring, addr0);
		FUNC6(ring, addr1);
	} else {
		/* registers */
		FUNC6(ring, addr0 << 2);
		FUNC6(ring, addr1 << 2);
	}
	FUNC6(ring, ref); /* reference */
	FUNC6(ring, mask); /* mask */
	FUNC6(ring, FUNC2(0xfff) |
			  FUNC1(inv)); /* retry count, poll interval */
}