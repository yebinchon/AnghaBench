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
 int /*<<< orphan*/  SDMA_OP_POLL_REGMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int mmVM_INVALIDATE_REQUEST ; 

__attribute__((used)) static void FUNC7(struct amdgpu_ring *ring,
					 unsigned vmid, uint64_t pd_addr)
{
	FUNC5(ring, vmid, pd_addr);

	/* wait for flush */
	FUNC6(ring, FUNC0(SDMA_OP_POLL_REGMEM) |
			  FUNC4(0) |
			  FUNC3(0)); /* always */
	FUNC6(ring, mmVM_INVALIDATE_REQUEST << 2);
	FUNC6(ring, 0);
	FUNC6(ring, 0); /* reference */
	FUNC6(ring, 0); /* mask */
	FUNC6(ring, FUNC2(0xfff) |
			  FUNC1(10)); /* retry count, poll interval */
}