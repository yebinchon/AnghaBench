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
struct io_pgtable_cfg {int /*<<< orphan*/  coherent_walk; struct device* iommu_dev; } ;
struct device {int dummy; } ;
typedef  int gfp_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_HIGHMEM ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device*,void*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int FUNC8 (size_t) ; 
 void* FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (void*) ; 

__attribute__((used)) static void *FUNC11(size_t size, gfp_t gfp,
				    struct io_pgtable_cfg *cfg)
{
	struct device *dev = cfg->iommu_dev;
	int order = FUNC8(size);
	struct page *p;
	dma_addr_t dma;
	void *pages;

	FUNC0((gfp & __GFP_HIGHMEM));
	p = FUNC2(dev ? FUNC4(dev) : NUMA_NO_NODE,
			     gfp | __GFP_ZERO, order);
	if (!p)
		return NULL;

	pages = FUNC9(p);
	if (!cfg->coherent_walk) {
		dma = FUNC5(dev, pages, size, DMA_TO_DEVICE);
		if (FUNC6(dev, dma))
			goto out_free;
		/*
		 * We depend on the IOMMU being able to work with any physical
		 * address directly, so if the DMA layer suggests otherwise by
		 * translating or truncating them, that bodes very badly...
		 */
		if (dma != FUNC10(pages))
			goto out_unmap;
	}

	return pages;

out_unmap:
	FUNC3(dev, "Cannot accommodate DMA translation for IOMMU page tables\n");
	FUNC7(dev, dma, size, DMA_TO_DEVICE);
out_free:
	FUNC1(p, order);
	return NULL;
}