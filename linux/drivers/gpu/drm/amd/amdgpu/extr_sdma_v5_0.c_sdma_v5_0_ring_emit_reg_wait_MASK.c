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
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *ring, uint32_t reg,
					 uint32_t val, uint32_t mask)
{
	FUNC5(ring, FUNC0(SDMA_OP_POLL_REGMEM) |
			  FUNC4(0) |
			  FUNC3(3)); /* equal */
	FUNC5(ring, reg << 2);
	FUNC5(ring, 0);
	FUNC5(ring, val); /* reference */
	FUNC5(ring, mask); /* mask */
	FUNC5(ring, FUNC2(0xfff) |
			  FUNC1(10));
}