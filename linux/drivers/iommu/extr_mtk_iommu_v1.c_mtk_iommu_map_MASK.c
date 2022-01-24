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
typedef  int u32 ;
struct mtk_iommu_domain {int* pgt_va; int /*<<< orphan*/  data; int /*<<< orphan*/  pgtlock; } ;
struct iommu_domain {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EEXIST ; 
 int F_DESC_NONSEC ; 
 int F_DESC_VALID ; 
 size_t MT2701_IOMMU_PAGE_SHIFT ; 
 scalar_t__ MT2701_IOMMU_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_iommu_domain* FUNC4 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC5(struct iommu_domain *domain, unsigned long iova,
			 phys_addr_t paddr, size_t size, int prot)
{
	struct mtk_iommu_domain *dom = FUNC4(domain);
	unsigned int page_num = size >> MT2701_IOMMU_PAGE_SHIFT;
	unsigned long flags;
	unsigned int i;
	u32 *pgt_base_iova = dom->pgt_va + (iova  >> MT2701_IOMMU_PAGE_SHIFT);
	u32 pabase = (u32)paddr;
	int map_size = 0;

	FUNC2(&dom->pgtlock, flags);
	for (i = 0; i < page_num; i++) {
		if (pgt_base_iova[i]) {
			FUNC0(pgt_base_iova, 0, i * sizeof(u32));
			break;
		}
		pgt_base_iova[i] = pabase | F_DESC_VALID | F_DESC_NONSEC;
		pabase += MT2701_IOMMU_PAGE_SIZE;
		map_size += MT2701_IOMMU_PAGE_SIZE;
	}

	FUNC3(&dom->pgtlock, flags);

	FUNC1(dom->data, iova, size);

	return map_size == size ? 0 : -EEXIST;
}