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
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_PFP_SYNC_ME ; 
 int /*<<< orphan*/  PACKET3_WAIT_REG_MEM ; 
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 int VM_INVALIDATE_REQUEST ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_ring*,int) ; 

void FUNC5(struct radeon_device *rdev, struct radeon_ring *ring,
		     unsigned vm_id, uint64_t pd_addr)
{
	FUNC4(ring, FUNC0(VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm_id << 2), 0));
	FUNC4(ring, pd_addr >> 12);

	/* flush hdp cache */
	FUNC4(ring, FUNC0(HDP_MEM_COHERENCY_FLUSH_CNTL, 0));
	FUNC4(ring, 0x1);

	/* bits 0-7 are the VM contexts0-7 */
	FUNC4(ring, FUNC0(VM_INVALIDATE_REQUEST, 0));
	FUNC4(ring, 1 << vm_id);

	/* wait for the invalidate to complete */
	FUNC4(ring, FUNC1(PACKET3_WAIT_REG_MEM, 5));
	FUNC4(ring, (FUNC3(0) |  /* always */
				 FUNC2(0))); /* me */
	FUNC4(ring, VM_INVALIDATE_REQUEST >> 2);
	FUNC4(ring, 0);
	FUNC4(ring, 0); /* ref */
	FUNC4(ring, 0); /* mask */
	FUNC4(ring, 0x20); /* poll interval */

	/* sync PFP to ME, otherwise we might get invalid PFP reads */
	FUNC4(ring, FUNC1(PACKET3_PFP_SYNC_ME, 0));
	FUNC4(ring, 0x0);
}