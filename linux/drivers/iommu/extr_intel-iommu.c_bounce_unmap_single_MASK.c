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
struct dmar_domain {int /*<<< orphan*/  domain; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VTD_PAGE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 struct dmar_domain* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,size_t,size_t,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC8(struct device *dev, dma_addr_t dev_addr, size_t size,
		    enum dma_data_direction dir, unsigned long attrs)
{
	size_t aligned_size = FUNC0(size, VTD_PAGE_SIZE);
	struct dmar_domain *domain;
	phys_addr_t tlb_addr;

	domain = FUNC2(dev);
	if (FUNC1(!domain))
		return;

	tlb_addr = FUNC3(&domain->domain, dev_addr);
	if (FUNC1(!tlb_addr))
		return;

	FUNC4(dev, dev_addr, size);
	if (FUNC5(tlb_addr))
		FUNC6(dev, tlb_addr, size,
					 aligned_size, dir, attrs);

	FUNC7(dev, dev_addr, size);
}