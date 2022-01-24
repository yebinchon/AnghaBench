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
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int HDP_MEM_COHERENCY_FLUSH_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_PFP_SYNC_ME ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 unsigned int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 int VM_INVALIDATE_REQUEST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_ring*,int) ; 

void FUNC6(struct radeon_device *rdev, struct radeon_ring *ring,
		 unsigned vm_id, uint64_t pd_addr)
{
	/* write new base address */
	FUNC5(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC5(ring, (FUNC4(1) |
				 FUNC3(0)));

	if (vm_id < 8) {
		FUNC5(ring,
				  (VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm_id << 2)) >> 2);
	} else {
		FUNC5(ring,
				  (VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((vm_id - 8) << 2)) >> 2);
	}
	FUNC5(ring, 0);
	FUNC5(ring, pd_addr >> 12);

	/* flush hdp cache */
	FUNC5(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC5(ring, (FUNC4(1) |
				 FUNC3(0)));
	FUNC5(ring, HDP_MEM_COHERENCY_FLUSH_CNTL >> 2);
	FUNC5(ring, 0);
	FUNC5(ring, 0x1);

	/* bits 0-15 are the VM contexts0-15 */
	FUNC5(ring, FUNC0(PACKET3_WRITE_DATA, 3));
	FUNC5(ring, (FUNC4(1) |
				 FUNC3(0)));
	FUNC5(ring, VM_INVALIDATE_REQUEST >> 2);
	FUNC5(ring, 0);
	FUNC5(ring, 1 << vm_id);

	/* wait for the invalidate to complete */
	FUNC5(ring, FUNC0(PACKET3_WAIT_REG_MEM, 5));
	FUNC5(ring, (FUNC2(0) |  /* always */
				 FUNC1(0))); /* me */
	FUNC5(ring, VM_INVALIDATE_REQUEST >> 2);
	FUNC5(ring, 0);
	FUNC5(ring, 0); /* ref */
	FUNC5(ring, 0); /* mask */
	FUNC5(ring, 0x20); /* poll interval */

	/* sync PFP to ME, otherwise we might get invalid PFP reads */
	FUNC5(ring, FUNC0(PACKET3_PFP_SYNC_ME, 0));
	FUNC5(ring, 0x0);
}