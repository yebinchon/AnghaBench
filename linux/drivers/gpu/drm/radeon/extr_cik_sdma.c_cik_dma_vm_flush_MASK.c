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
typedef  int uint64_t ;
typedef  int u32 ;
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_OPCODE_POLL_REG_MEM ; 
 int /*<<< orphan*/  SDMA_OPCODE_SRBM_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SH_MEM_APE1_BASE ; 
 int SH_MEM_APE1_LIMIT ; 
 int SH_MEM_BASES ; 
 int SH_MEM_CONFIG ; 
 int SRBM_GFX_CNTL ; 
 int FUNC3 (unsigned int) ; 
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 unsigned int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 int VM_INVALIDATE_REQUEST ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_ring*,int) ; 

void FUNC6(struct radeon_device *rdev, struct radeon_ring *ring,
		      unsigned vm_id, uint64_t pd_addr)
{
	u32 extra_bits = (FUNC2(0) |
			  FUNC1(0)); /* always */

	FUNC5(ring, FUNC0(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
	if (vm_id < 8) {
		FUNC5(ring, (VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm_id << 2)) >> 2);
	} else {
		FUNC5(ring, (VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((vm_id - 8) << 2)) >> 2);
	}
	FUNC5(ring, pd_addr >> 12);

	/* update SH_MEM_* regs */
	FUNC5(ring, FUNC0(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
	FUNC5(ring, SRBM_GFX_CNTL >> 2);
	FUNC5(ring, FUNC3(vm_id));

	FUNC5(ring, FUNC0(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
	FUNC5(ring, SH_MEM_BASES >> 2);
	FUNC5(ring, 0);

	FUNC5(ring, FUNC0(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
	FUNC5(ring, SH_MEM_CONFIG >> 2);
	FUNC5(ring, 0);

	FUNC5(ring, FUNC0(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
	FUNC5(ring, SH_MEM_APE1_BASE >> 2);
	FUNC5(ring, 1);

	FUNC5(ring, FUNC0(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
	FUNC5(ring, SH_MEM_APE1_LIMIT >> 2);
	FUNC5(ring, 0);

	FUNC5(ring, FUNC0(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
	FUNC5(ring, SRBM_GFX_CNTL >> 2);
	FUNC5(ring, FUNC3(0));

	/* flush HDP */
	FUNC4(rdev, ring->idx);

	/* flush TLB */
	FUNC5(ring, FUNC0(SDMA_OPCODE_SRBM_WRITE, 0, 0xf000));
	FUNC5(ring, VM_INVALIDATE_REQUEST >> 2);
	FUNC5(ring, 1 << vm_id);

	FUNC5(ring, FUNC0(SDMA_OPCODE_POLL_REG_MEM, 0, extra_bits));
	FUNC5(ring, VM_INVALIDATE_REQUEST >> 2);
	FUNC5(ring, 0);
	FUNC5(ring, 0); /* reference */
	FUNC5(ring, 0); /* mask */
	FUNC5(ring, (0xfff << 16) | 10); /* retry count, poll interval */
}