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
typedef  int u32 ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_OPCODE_POLL_REG_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int) ; 
 int mmVM_INVALIDATE_REQUEST ; 

__attribute__((used)) static void FUNC5(struct amdgpu_ring *ring,
					unsigned vmid, uint64_t pd_addr)
{
	u32 extra_bits = (FUNC2(0) |
			  FUNC1(0)); /* always */

	FUNC3(ring, vmid, pd_addr);

	FUNC4(ring, FUNC0(SDMA_OPCODE_POLL_REG_MEM, 0, extra_bits));
	FUNC4(ring, mmVM_INVALIDATE_REQUEST << 2);
	FUNC4(ring, 0);
	FUNC4(ring, 0); /* reference */
	FUNC4(ring, 0); /* mask */
	FUNC4(ring, (0xfff << 16) | 10); /* retry count, poll interval */
}