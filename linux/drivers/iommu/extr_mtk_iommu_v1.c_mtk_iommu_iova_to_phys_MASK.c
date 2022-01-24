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
struct mtk_iommu_domain {int* pgt_va; int /*<<< orphan*/  pgtlock; } ;
struct iommu_domain {int dummy; } ;
typedef  int phys_addr_t ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int MT2701_IOMMU_PAGE_SHIFT ; 
 int MT2701_IOMMU_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_iommu_domain* FUNC2 (struct iommu_domain*) ; 

__attribute__((used)) static phys_addr_t FUNC3(struct iommu_domain *domain,
					  dma_addr_t iova)
{
	struct mtk_iommu_domain *dom = FUNC2(domain);
	unsigned long flags;
	phys_addr_t pa;

	FUNC0(&dom->pgtlock, flags);
	pa = *(dom->pgt_va + (iova >> MT2701_IOMMU_PAGE_SHIFT));
	pa = pa & (~(MT2701_IOMMU_PAGE_SIZE - 1));
	FUNC1(&dom->pgtlock, flags);

	return pa;
}