#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_vm {TYPE_1__* page_tables; } ;
struct radeon_ib {int /*<<< orphan*/  sync; } ;
struct radeon_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  resv; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct radeon_bo {TYPE_3__ tbo; } ;
struct TYPE_4__ {struct radeon_bo* bo; } ;

/* Variables and functions */
 unsigned int RADEON_GPU_PAGE_SIZE ; 
 int RADEON_VM_PTE_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t radeon_vm_block_size ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ib*,size_t,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev,
				 struct radeon_vm *vm,
				 struct radeon_ib *ib,
				 uint64_t start, uint64_t end,
				 uint64_t dst, uint32_t flags)
{
	uint64_t mask = RADEON_VM_PTE_COUNT - 1;
	uint64_t last_pte = ~0, last_dst = ~0;
	unsigned count = 0;
	uint64_t addr;

	/* walk over the address space and update the page tables */
	for (addr = start; addr < end; ) {
		uint64_t pt_idx = addr >> radeon_vm_block_size;
		struct radeon_bo *pt = vm->page_tables[pt_idx].bo;
		unsigned nptes;
		uint64_t pte;
		int r;

		FUNC2(rdev, &ib->sync, pt->tbo.base.resv, true);
		r = FUNC0(pt->tbo.base.resv, 1);
		if (r)
			return r;

		if ((addr & ~mask) == (end & ~mask))
			nptes = end - addr;
		else
			nptes = RADEON_VM_PTE_COUNT - (addr & mask);

		pte = FUNC1(pt);
		pte += (addr & mask) * 8;

		if ((last_pte + 8 * count) != pte) {

			if (count) {
				FUNC3(rdev, ib, last_pte,
						    last_pte + 8 * count,
						    last_dst, flags);
			}

			count = nptes;
			last_pte = pte;
			last_dst = dst;
		} else {
			count += nptes;
		}

		addr += nptes;
		dst += nptes * RADEON_GPU_PAGE_SIZE;
	}

	if (count) {
		FUNC3(rdev, ib, last_pte,
				    last_pte + 8 * count,
				    last_dst, flags);
	}

	return 0;
}