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
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_PFP_SYNC_ME ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ; 
 int SH_MEM_BASES ; 
 int SH_MEM_CONFIG_GFX_DEFAULT ; 
 int SRBM_GFX_CNTL ; 
 int FUNC1 (unsigned int) ; 
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 unsigned int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 int VM_INVALIDATE_REQUEST ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_ring*,int) ; 

void FUNC9(struct radeon_device *rdev, struct radeon_ring *ring,
		  unsigned vm_id, uint64_t pd_addr)
{
	int usepfp = (ring->idx == RADEON_RING_TYPE_GFX_INDEX);

	FUNC8(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC8(ring, (FUNC6(usepfp) |
				 FUNC5(0)));
	if (vm_id < 8) {
		FUNC8(ring,
				  (VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm_id << 2)) >> 2);
	} else {
		FUNC8(ring,
				  (VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((vm_id - 8) << 2)) >> 2);
	}
	FUNC8(ring, 0);
	FUNC8(ring, pd_addr >> 12);

	/* update SH_MEM_* regs */
	FUNC8(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC8(ring, (FUNC6(usepfp) |
				 FUNC5(0)));
	FUNC8(ring, SRBM_GFX_CNTL >> 2);
	FUNC8(ring, 0);
	FUNC8(ring, FUNC1(vm_id));

	FUNC8(ring, FUNC0(PACKET3_WRITE_DATA, 6));
	FUNC8(ring, (FUNC6(usepfp) |
				 FUNC5(0)));
	FUNC8(ring, SH_MEM_BASES >> 2);
	FUNC8(ring, 0);

	FUNC8(ring, 0); /* SH_MEM_BASES */
	FUNC8(ring, SH_MEM_CONFIG_GFX_DEFAULT); /* SH_MEM_CONFIG */
	FUNC8(ring, 1); /* SH_MEM_APE1_BASE */
	FUNC8(ring, 0); /* SH_MEM_APE1_LIMIT */

	FUNC8(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC8(ring, (FUNC6(usepfp) |
				 FUNC5(0)));
	FUNC8(ring, SRBM_GFX_CNTL >> 2);
	FUNC8(ring, 0);
	FUNC8(ring, FUNC1(0));

	/* HDP flush */
	FUNC7(rdev, ring->idx);

	/* bits 0-15 are the VM contexts0-15 */
	FUNC8(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC8(ring, (FUNC6(usepfp) |
				 FUNC5(0)));
	FUNC8(ring, VM_INVALIDATE_REQUEST >> 2);
	FUNC8(ring, 0);
	FUNC8(ring, 1 << vm_id);

	/* wait for the invalidate to complete */
	FUNC8(ring, FUNC0(PACKET3_WAIT_REG_MEM, 5));
	FUNC8(ring, (FUNC4(0) | /* wait */
				 FUNC3(0) |  /* always */
				 FUNC2(0))); /* me */
	FUNC8(ring, VM_INVALIDATE_REQUEST >> 2);
	FUNC8(ring, 0);
	FUNC8(ring, 0); /* ref */
	FUNC8(ring, 0); /* mask */
	FUNC8(ring, 0x20); /* poll interval */

	/* compute doesn't have PFP */
	if (usepfp) {
		/* sync PFP to ME, otherwise we might get invalid PFP reads */
		FUNC8(ring, FUNC0(PACKET3_PFP_SYNC_ME, 0));
		FUNC8(ring, 0x0);
	}
}