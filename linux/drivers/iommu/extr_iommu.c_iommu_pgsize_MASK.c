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
struct iommu_domain {size_t pgsize_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned int FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 

__attribute__((used)) static size_t FUNC5(struct iommu_domain *domain,
			   unsigned long addr_merge, size_t size)
{
	unsigned int pgsize_idx;
	size_t pgsize;

	/* Max page size that still fits into 'size' */
	pgsize_idx = FUNC2(size);

	/* need to consider alignment requirements ? */
	if (FUNC3(addr_merge)) {
		/* Max page size allowed by address */
		unsigned int align_pgsize_idx = FUNC1(addr_merge);
		pgsize_idx = FUNC4(pgsize_idx, align_pgsize_idx);
	}

	/* build a mask of acceptable page sizes */
	pgsize = (1UL << (pgsize_idx + 1)) - 1;

	/* throw away page sizes not supported by the hardware */
	pgsize &= domain->pgsize_bitmap;

	/* make sure we're still sane */
	FUNC0(!pgsize);

	/* pick the biggest page */
	pgsize_idx = FUNC2(pgsize);
	pgsize = 1UL << pgsize_idx;

	return pgsize;
}