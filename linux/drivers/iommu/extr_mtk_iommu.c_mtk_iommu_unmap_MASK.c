#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtk_iommu_domain {int /*<<< orphan*/  pgtlock; TYPE_1__* iop; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {size_t (* unmap ) (TYPE_1__*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 size_t FUNC2 (TYPE_1__*,unsigned long,size_t,struct iommu_iotlb_gather*) ; 
 struct mtk_iommu_domain* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static size_t FUNC4(struct iommu_domain *domain,
			      unsigned long iova, size_t size,
			      struct iommu_iotlb_gather *gather)
{
	struct mtk_iommu_domain *dom = FUNC3(domain);
	unsigned long flags;
	size_t unmapsz;

	FUNC0(&dom->pgtlock, flags);
	unmapsz = dom->iop->unmap(dom->iop, iova, size, gather);
	FUNC1(&dom->pgtlock, flags);

	return unmapsz;
}