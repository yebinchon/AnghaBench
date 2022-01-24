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
struct thunderx_lmc {unsigned long long parity_test; unsigned int mask0; unsigned int mask2; scalar_t__ regs; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 scalar_t__ LMC_CHAR_MASK0 ; 
 scalar_t__ LMC_CHAR_MASK2 ; 
 scalar_t__ LMC_ECC_PARITY_TEST ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  TEST_PATTERN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(void *arg)
{
	struct thunderx_lmc *lmc = arg;
	uintptr_t addr, phys;
	unsigned int cline_size = FUNC1();
	const unsigned int lines = PAGE_SIZE / cline_size;
	unsigned int i, cl_idx;

	addr = (uintptr_t)FUNC3(lmc->mem);
	phys = (uintptr_t)FUNC4(lmc->mem);

	cl_idx = (phys & 0x7f) >> 4;
	lmc->parity_test &= ~(7ULL << 8);
	lmc->parity_test |= (cl_idx << 8);

	FUNC6(lmc->mask0, lmc->regs + LMC_CHAR_MASK0);
	FUNC6(lmc->mask2, lmc->regs + LMC_CHAR_MASK2);
	FUNC6(lmc->parity_test, lmc->regs + LMC_ECC_PARITY_TEST);

	FUNC5(lmc->regs + LMC_CHAR_MASK0);
	FUNC5(lmc->regs + LMC_CHAR_MASK2);
	FUNC5(lmc->regs + LMC_ECC_PARITY_TEST);

	for (i = 0; i < lines; i++) {
		FUNC2((void *)addr, TEST_PATTERN, cline_size);
		FUNC0();

		/*
		 * Flush L1 cachelines to the PoC (L2).
		 * This will cause cacheline eviction to the L2.
		 */
		asm volatile("dc civac, %0\n"
			     "dsb sy\n"
			     : : "r"(addr + i * cline_size));
	}

	for (i = 0; i < lines; i++) {
		/*
		 * Flush L2 cachelines to the DRAM.
		 * This will cause cacheline eviction to the DRAM
		 * and ECC corruption according to the masks set.
		 */
		__asm__ volatile("sys #0,c11,C1,#2, %0\n"
				 : : "r"(phys + i * cline_size));
	}

	for (i = 0; i < lines; i++) {
		/*
		 * Invalidate L2 cachelines.
		 * The subsequent load will cause cacheline fetch
		 * from the DRAM and an error interrupt
		 */
		__asm__ volatile("sys #0,c11,C1,#1, %0"
				 : : "r"(phys + i * cline_size));
	}

	for (i = 0; i < lines; i++) {
		/*
		 * Invalidate L1 cachelines.
		 * The subsequent load will cause cacheline fetch
		 * from the L2 and/or DRAM
		 */
		asm volatile("dc ivac, %0\n"
			     "dsb sy\n"
			     : : "r"(addr + i * cline_size));
	}

	return 0;
}