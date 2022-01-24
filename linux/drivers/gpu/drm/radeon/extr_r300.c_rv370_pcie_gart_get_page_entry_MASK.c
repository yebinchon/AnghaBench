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
typedef  int uint32_t ;

/* Variables and functions */
 int R300_PTE_READABLE ; 
 int R300_PTE_UNSNOOPED ; 
 int R300_PTE_WRITEABLE ; 
 int RADEON_GART_PAGE_READ ; 
 int RADEON_GART_PAGE_SNOOP ; 
 int RADEON_GART_PAGE_WRITE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

uint64_t FUNC2(uint64_t addr, uint32_t flags)
{
	addr = (FUNC0(addr) >> 8) |
		((FUNC1(addr) & 0xff) << 24);
	if (flags & RADEON_GART_PAGE_READ)
		addr |= R300_PTE_READABLE;
	if (flags & RADEON_GART_PAGE_WRITE)
		addr |= R300_PTE_WRITEABLE;
	if (!(flags & RADEON_GART_PAGE_SNOOP))
		addr |= R300_PTE_UNSNOOPED;
	return addr;
}