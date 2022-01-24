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
struct page {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DMA_DIRECT_REMAP ; 
 int /*<<< orphan*/  CONFIG_DMA_REMAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct page**,int) ; 
 struct page** FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct page*,size_t) ; 
 scalar_t__ FUNC6 (void*,size_t) ; 
 scalar_t__ FUNC7 (void*) ; 
 struct page* FUNC8 (void*) ; 
 struct page* FUNC9 (void*) ; 

__attribute__((used)) static void FUNC10(struct device *dev, size_t size, void *cpu_addr)
{
	size_t alloc_size = FUNC1(size);
	int count = alloc_size >> PAGE_SHIFT;
	struct page *page = NULL, **pages = NULL;

	/* Non-coherent atomic allocation? Easy */
	if (FUNC0(CONFIG_DMA_DIRECT_REMAP) &&
	    FUNC6(cpu_addr, alloc_size))
		return;

	if (FUNC0(CONFIG_DMA_REMAP) && FUNC7(cpu_addr)) {
		/*
		 * If it the address is remapped, then it's either non-coherent
		 * or highmem CMA, or an iommu_dma_alloc_remap() construction.
		 */
		pages = FUNC3(cpu_addr);
		if (!pages)
			page = FUNC9(cpu_addr);
		FUNC4(cpu_addr, alloc_size);
	} else {
		/* Lowmem means a coherent atomic or CMA allocation */
		page = FUNC8(cpu_addr);
	}

	if (pages)
		FUNC2(pages, count);
	if (page)
		FUNC5(dev, page, alloc_size);
}