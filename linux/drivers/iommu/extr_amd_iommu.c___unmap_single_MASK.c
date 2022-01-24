#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct dma_ops_domain {int /*<<< orphan*/  iovad; TYPE_1__ domain; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 unsigned int PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ amd_iommu_unmap_flush ; 
 int /*<<< orphan*/  FUNC1 (struct dma_ops_domain*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 unsigned int FUNC4 (unsigned int,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct dma_ops_domain *dma_dom,
			   dma_addr_t dma_addr,
			   size_t size,
			   int dir)
{
	dma_addr_t i, start;
	unsigned int pages;

	pages = FUNC4(dma_addr, size, PAGE_SIZE);
	dma_addr &= PAGE_MASK;
	start = dma_addr;

	for (i = 0; i < pages; ++i) {
		FUNC5(&dma_dom->domain, start, PAGE_SIZE);
		start += PAGE_SIZE;
	}

	if (amd_iommu_unmap_flush) {
		unsigned long flags;

		FUNC7(&dma_dom->domain.lock, flags);
		FUNC3(&dma_dom->domain);
		FUNC2(&dma_dom->domain);
		FUNC8(&dma_dom->domain.lock, flags);
		FUNC1(dma_dom, dma_addr, pages);
	} else {
		pages = FUNC0(pages);
		FUNC6(&dma_dom->iovad, dma_addr >> PAGE_SHIFT, pages, 0);
	}
}