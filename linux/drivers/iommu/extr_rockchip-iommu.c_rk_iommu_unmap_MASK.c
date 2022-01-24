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
struct rk_iommu_domain {int /*<<< orphan*/  dt_lock; int /*<<< orphan*/ * dt; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct rk_iommu_domain*,int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct rk_iommu_domain*,scalar_t__,size_t) ; 
 size_t FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rk_iommu_domain* FUNC9 (struct iommu_domain*) ; 

__attribute__((used)) static size_t FUNC10(struct iommu_domain *domain, unsigned long _iova,
			     size_t size, struct iommu_iotlb_gather *gather)
{
	struct rk_iommu_domain *rk_domain = FUNC9(domain);
	unsigned long flags;
	dma_addr_t pte_dma, iova = (dma_addr_t)_iova;
	phys_addr_t pt_phys;
	u32 dte;
	u32 *pte_addr;
	size_t unmap_size;

	FUNC7(&rk_domain->dt_lock, flags);

	/*
	 * pgsize_bitmap specifies iova sizes that fit in one page table
	 * (1024 4-KiB pages = 4 MiB).
	 * So, size will always be 4096 <= size <= 4194304.
	 * Since iommu_unmap() guarantees that both iova and size will be
	 * aligned, we will always only be unmapping from a single dte here.
	 */
	dte = rk_domain->dt[FUNC5(iova)];
	/* Just return 0 if iova is unmapped */
	if (!FUNC1(dte)) {
		FUNC8(&rk_domain->dt_lock, flags);
		return 0;
	}

	pt_phys = FUNC2(dte);
	pte_addr = (u32 *)FUNC0(pt_phys) + FUNC6(iova);
	pte_dma = pt_phys + FUNC6(iova) * sizeof(u32);
	unmap_size = FUNC3(rk_domain, pte_addr, pte_dma, size);

	FUNC8(&rk_domain->dt_lock, flags);

	/* Shootdown iotlb entries for iova range that was just unmapped */
	FUNC4(rk_domain, iova, unmap_size);

	return unmap_size;
}