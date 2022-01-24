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
typedef  size_t u32 ;
struct rk_iommu_domain {size_t* dt; int /*<<< orphan*/  dt_lock; } ;
struct iommu_domain {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*) ; 
 int FUNC1 (size_t*) ; 
 size_t* FUNC2 (struct rk_iommu_domain*,scalar_t__) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int FUNC4 (struct rk_iommu_domain*,size_t*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,size_t,int) ; 
 size_t FUNC5 (scalar_t__) ; 
 size_t FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rk_iommu_domain* FUNC9 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC10(struct iommu_domain *domain, unsigned long _iova,
			phys_addr_t paddr, size_t size, int prot)
{
	struct rk_iommu_domain *rk_domain = FUNC9(domain);
	unsigned long flags;
	dma_addr_t pte_dma, iova = (dma_addr_t)_iova;
	u32 *page_table, *pte_addr;
	u32 dte_index, pte_index;
	int ret;

	FUNC7(&rk_domain->dt_lock, flags);

	/*
	 * pgsize_bitmap specifies iova sizes that fit in one page table
	 * (1024 4-KiB pages = 4 MiB).
	 * So, size will always be 4096 <= size <= 4194304.
	 * Since iommu_map() guarantees that both iova and size will be
	 * aligned, we will always only be mapping from a single dte here.
	 */
	page_table = FUNC2(rk_domain, iova);
	if (FUNC0(page_table)) {
		FUNC8(&rk_domain->dt_lock, flags);
		return FUNC1(page_table);
	}

	dte_index = rk_domain->dt[FUNC5(iova)];
	pte_index = FUNC6(iova);
	pte_addr = &page_table[pte_index];
	pte_dma = FUNC3(dte_index) + pte_index * sizeof(u32);
	ret = FUNC4(rk_domain, pte_addr, pte_dma, iova,
				paddr, size, prot);

	FUNC8(&rk_domain->dt_lock, flags);

	return ret;
}