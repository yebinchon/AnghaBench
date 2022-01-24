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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_ring *ring, int eng_sel,
				  int mem_space, int opt, uint32_t addr0,
				  uint32_t addr1, uint32_t ref, uint32_t mask,
				  uint32_t inv)
{
	FUNC6(ring, FUNC1(PACKET3_WAIT_REG_MEM, 5));
	FUNC6(ring,
			  /* memory (1) or register (0) */
			  (FUNC4(mem_space) |
			   FUNC5(opt) | /* wait */
			   FUNC3(3) |  /* equal */
			   FUNC2(eng_sel)));

	if (mem_space)
		FUNC0(addr0 & 0x3); /* Dword align */
	FUNC6(ring, addr0);
	FUNC6(ring, addr1);
	FUNC6(ring, ref);
	FUNC6(ring, mask);
	FUNC6(ring, inv); /* poll interval */
}