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
typedef  unsigned int uint32_t ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*,unsigned int,int) ; 
 unsigned int mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 unsigned int mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 unsigned int mmVM_INVALIDATE_REQUEST ; 

__attribute__((used)) static uint64_t FUNC1(struct amdgpu_ring *ring,
					    unsigned vmid, uint64_t pd_addr)
{
	uint32_t reg;

	/* write new base address */
	if (vmid < 8)
		reg = mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR + vmid;
	else
		reg = mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR + (vmid - 8);
	FUNC0(ring, reg, pd_addr >> 12);

	/* bits 0-15 are the VM contexts0-15 */
	FUNC0(ring, mmVM_INVALIDATE_REQUEST, 1 << vmid);

	return pd_addr;
}