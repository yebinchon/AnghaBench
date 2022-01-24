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
typedef  int /*<<< orphan*/  u64 ;
struct protection_domain {int dummy; } ;
struct page {int dummy; } ;
struct dma_ops_domain {int dummy; } ;
struct device {int /*<<< orphan*/ * dma_mask; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MAPPING_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct dma_ops_domain*,scalar_t__,size_t,int,int /*<<< orphan*/ ) ; 
 struct protection_domain* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 struct dma_ops_domain* FUNC5 (struct protection_domain*) ; 

__attribute__((used)) static dma_addr_t FUNC6(struct device *dev, struct page *page,
			   unsigned long offset, size_t size,
			   enum dma_data_direction dir,
			   unsigned long attrs)
{
	phys_addr_t paddr = FUNC4(page) + offset;
	struct protection_domain *domain;
	struct dma_ops_domain *dma_dom;
	u64 dma_mask;

	domain = FUNC3(dev);
	if (FUNC1(domain) == -EINVAL)
		return (dma_addr_t)paddr;
	else if (FUNC0(domain))
		return DMA_MAPPING_ERROR;

	dma_mask = *dev->dma_mask;
	dma_dom = FUNC5(domain);

	return FUNC2(dev, dma_dom, paddr, size, dir, dma_mask);
}