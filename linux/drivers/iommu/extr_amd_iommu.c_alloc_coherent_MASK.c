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
typedef  scalar_t__ u64 ;
struct protection_domain {int dummy; } ;
struct page {int dummy; } ;
struct dma_ops_domain {int dummy; } ;
struct device {scalar_t__* dma_mask; scalar_t__ coherent_dma_mask; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_MAPPING_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (struct protection_domain*) ; 
 size_t FUNC1 (size_t) ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct protection_domain*) ; 
 int __GFP_DMA ; 
 int __GFP_DMA32 ; 
 int __GFP_HIGHMEM ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct dma_ops_domain*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 struct page* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (struct device*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct page*,size_t) ; 
 struct protection_domain* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 void* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 struct dma_ops_domain* FUNC13 (struct protection_domain*) ; 

__attribute__((used)) static void *FUNC14(struct device *dev, size_t size,
			    dma_addr_t *dma_addr, gfp_t flag,
			    unsigned long attrs)
{
	u64 dma_mask = dev->coherent_dma_mask;
	struct protection_domain *domain;
	struct dma_ops_domain *dma_dom;
	struct page *page;

	domain = FUNC8(dev);
	if (FUNC2(domain) == -EINVAL) {
		page = FUNC5(flag, FUNC9(size));
		*dma_addr = FUNC12(page);
		return FUNC11(page);
	} else if (FUNC0(domain))
		return NULL;

	dma_dom   = FUNC13(domain);
	size	  = FUNC1(size);
	dma_mask  = dev->coherent_dma_mask;
	flag     &= ~(__GFP_DMA | __GFP_HIGHMEM | __GFP_DMA32);
	flag     |= __GFP_ZERO;

	page = FUNC5(flag | __GFP_NOWARN,  FUNC9(size));
	if (!page) {
		if (!FUNC10(flag))
			return NULL;

		page = FUNC6(dev, size >> PAGE_SHIFT,
					FUNC9(size), flag & __GFP_NOWARN);
		if (!page)
			return NULL;
	}

	if (!dma_mask)
		dma_mask = *dev->dma_mask;

	*dma_addr = FUNC4(dev, dma_dom, FUNC12(page),
				 size, DMA_BIDIRECTIONAL, dma_mask);

	if (*dma_addr == DMA_MAPPING_ERROR)
		goto out_free;

	return FUNC11(page);

out_free:

	if (!FUNC7(dev, page, size >> PAGE_SHIFT))
		FUNC3(page, FUNC9(size));

	return NULL;
}