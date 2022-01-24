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
struct dmar_domain {int /*<<< orphan*/  iovad; } ;

/* Variables and functions */
 int DMA_PTE_READ ; 
 int DMA_PTE_WRITE ; 
 int ENOMEM ; 
 unsigned long long VTD_PAGE_SHIFT ; 
 int FUNC0 (struct dmar_domain*,unsigned long,int /*<<< orphan*/ *,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dmar_domain *domain,
				     unsigned long long start,
				     unsigned long long end)
{
	unsigned long first_vpfn = start >> VTD_PAGE_SHIFT;
	unsigned long last_vpfn = end >> VTD_PAGE_SHIFT;

	if (!FUNC5(&domain->iovad, FUNC2(first_vpfn),
			  FUNC2(last_vpfn))) {
		FUNC4("Reserving iova failed\n");
		return -ENOMEM;
	}

	FUNC3("Mapping reserved region %llx-%llx\n", start, end);
	/*
	 * RMRR range might have overlap with physical memory range,
	 * clear it first
	 */
	FUNC1(domain, first_vpfn, last_vpfn);

	return FUNC0(domain, first_vpfn, NULL,
				first_vpfn, last_vpfn - first_vpfn + 1,
				DMA_PTE_READ|DMA_PTE_WRITE);
}