#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u64 ;
struct TYPE_3__ {scalar_t__ type; int num_pages; scalar_t__ phys_addr; } ;
typedef  TYPE_1__ efi_memory_desc_t ;

/* Variables and functions */
 scalar_t__ EFI_CONVENTIONAL_MEMORY ; 
 int EFI_PAGE_SIZE ; 
 scalar_t__ ULONG_MAX ; 
 unsigned long FUNC0 (unsigned long,scalar_t__) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 unsigned long FUNC2 (scalar_t__,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC3(efi_memory_desc_t *md,
					 unsigned long size,
					 unsigned long align_shift)
{
	unsigned long align = 1UL << align_shift;
	u64 first_slot, last_slot, region_end;

	if (md->type != EFI_CONVENTIONAL_MEMORY)
		return 0;

	region_end = FUNC0((u64)ULONG_MAX, md->phys_addr + md->num_pages*EFI_PAGE_SIZE - 1);

	first_slot = FUNC2(md->phys_addr, align);
	last_slot = FUNC1(region_end - size + 1, align);

	if (first_slot > last_slot)
		return 0;

	return ((unsigned long)(last_slot - first_slot) >> align_shift) + 1;
}