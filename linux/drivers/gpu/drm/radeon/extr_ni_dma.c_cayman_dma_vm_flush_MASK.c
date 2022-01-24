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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_SRBM_WRITE ; 
 int DMA_SRBM_READ_PACKET ; 
 int HDP_MEM_COHERENCY_FLUSH_CNTL ; 
 unsigned int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 int VM_INVALIDATE_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 

void FUNC2(struct radeon_device *rdev, struct radeon_ring *ring,
			 unsigned vm_id, uint64_t pd_addr)
{
	FUNC1(ring, FUNC0(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
	FUNC1(ring, (0xf << 16) | ((VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm_id << 2)) >> 2));
	FUNC1(ring, pd_addr >> 12);

	/* flush hdp cache */
	FUNC1(ring, FUNC0(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
	FUNC1(ring, (0xf << 16) | (HDP_MEM_COHERENCY_FLUSH_CNTL >> 2));
	FUNC1(ring, 1);

	/* bits 0-7 are the VM contexts0-7 */
	FUNC1(ring, FUNC0(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
	FUNC1(ring, (0xf << 16) | (VM_INVALIDATE_REQUEST >> 2));
	FUNC1(ring, 1 << vm_id);

	/* wait for invalidate to complete */
	FUNC1(ring, DMA_SRBM_READ_PACKET);
	FUNC1(ring, (0xff << 20) | (VM_INVALIDATE_REQUEST >> 2));
	FUNC1(ring, 0); /* mask */
	FUNC1(ring, 0); /* value */
}