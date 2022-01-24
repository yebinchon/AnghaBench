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
typedef  int /*<<< orphan*/  u32 ;
struct rk_iommu_domain {int /*<<< orphan*/  dt_lock; } ;
typedef  size_t phys_addr_t ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int EADDRINUSE ; 
 size_t SPAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int*,size_t*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_iommu_domain*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_iommu_domain*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rk_iommu_domain*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct rk_iommu_domain *rk_domain, u32 *pte_addr,
			     dma_addr_t pte_dma, dma_addr_t iova,
			     phys_addr_t paddr, size_t size, int prot)
{
	unsigned int pte_count;
	unsigned int pte_total = size / SPAGE_SIZE;
	phys_addr_t page_phys;

	FUNC0(&rk_domain->dt_lock);

	for (pte_count = 0; pte_count < pte_total; pte_count++) {
		u32 pte = pte_addr[pte_count];

		if (FUNC5(pte))
			goto unwind;

		pte_addr[pte_count] = FUNC4(paddr, prot);

		paddr += SPAGE_SIZE;
	}

	FUNC7(rk_domain, pte_dma, pte_total);

	/*
	 * Zap the first and last iova to evict from iotlb any previously
	 * mapped cachelines holding stale values for its dte and pte.
	 * We only zap the first and last iova, since only they could have
	 * dte or pte shared with an existing mapping.
	 */
	FUNC3(rk_domain, iova, size);

	return 0;
unwind:
	/* Unmap the range of iovas that we just mapped */
	FUNC2(rk_domain, pte_addr, pte_dma,
			    pte_count * SPAGE_SIZE);

	iova += pte_count * SPAGE_SIZE;
	page_phys = FUNC6(pte_addr[pte_count]);
	FUNC1("iova: %pad already mapped to %pa cannot remap to phys: %pa prot: %#x\n",
	       &iova, &page_phys, &paddr, prot);

	return -EADDRINUSE;
}