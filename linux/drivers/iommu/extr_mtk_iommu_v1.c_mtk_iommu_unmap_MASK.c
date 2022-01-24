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
struct mtk_iommu_domain {int /*<<< orphan*/  data; int /*<<< orphan*/  pgtlock; int /*<<< orphan*/ * pgt_va; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 unsigned long MT2701_IOMMU_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_iommu_domain* FUNC4 (struct iommu_domain*) ; 

__attribute__((used)) static size_t FUNC5(struct iommu_domain *domain,
			      unsigned long iova, size_t size,
			      struct iommu_iotlb_gather *gather)
{
	struct mtk_iommu_domain *dom = FUNC4(domain);
	unsigned long flags;
	u32 *pgt_base_iova = dom->pgt_va + (iova  >> MT2701_IOMMU_PAGE_SHIFT);
	unsigned int page_num = size >> MT2701_IOMMU_PAGE_SHIFT;

	FUNC2(&dom->pgtlock, flags);
	FUNC0(pgt_base_iova, 0, page_num * sizeof(u32));
	FUNC3(&dom->pgtlock, flags);

	FUNC1(dom->data, iova, size);

	return size;
}