#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint32_t ;
struct psb_mmu_pt {int /*<<< orphan*/  count; } ;
struct psb_mmu_pd {int hw_context; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct psb_mmu_pd*,unsigned long,unsigned long,int,int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct psb_mmu_pt* FUNC4 (struct psb_mmu_pd*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct psb_mmu_pt*) ; 
 int /*<<< orphan*/  FUNC6 (struct psb_mmu_pt*,unsigned long,unsigned long) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct psb_mmu_pd *pd, uint32_t start_pfn,
				unsigned long address, uint32_t num_pages,
				int type)
{
	struct psb_mmu_pt *pt;
	uint32_t pte;
	unsigned long addr;
	unsigned long end;
	unsigned long next;
	unsigned long f_address = address;
	int ret = -ENOMEM;

	FUNC0(&pd->driver->sem);

	addr = address;
	end = addr + (num_pages << PAGE_SHIFT);

	do {
		next = FUNC7(addr, end);
		pt = FUNC4(pd, addr);
		if (!pt) {
			ret = -ENOMEM;
			goto out;
		}
		do {
			pte = FUNC3(start_pfn++, type);
			FUNC6(pt, addr, pte);
			pt->count++;
		} while (addr += PAGE_SIZE, addr < next);
		FUNC5(pt);

	} while (addr = next, next != end);
	ret = 0;

out:
	if (pd->hw_context != -1)
		FUNC2(pd, f_address, num_pages, 1, 1);

	FUNC8(&pd->driver->sem);

	if (pd->hw_context != -1)
		FUNC1(pd->driver);

	return 0;
}