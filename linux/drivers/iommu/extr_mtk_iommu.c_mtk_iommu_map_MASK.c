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
struct mtk_iommu_data {scalar_t__ enable_4GB; } ;
struct iommu_domain {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_2__ {int (* map ) (TYPE_1__*,unsigned long,int /*<<< orphan*/ ,size_t,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mtk_iommu_data* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (TYPE_1__*,unsigned long,int /*<<< orphan*/ ,size_t,int) ; 
 struct mtk_iommu_domain* FUNC5 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC6(struct iommu_domain *domain, unsigned long iova,
			 phys_addr_t paddr, size_t size, int prot)
{
	struct mtk_iommu_domain *dom = FUNC5(domain);
	struct mtk_iommu_data *data = FUNC1();
	unsigned long flags;
	int ret;

	/* The "4GB mode" M4U physically can not use the lower remap of Dram. */
	if (data->enable_4GB)
		paddr |= FUNC0(32);

	FUNC2(&dom->pgtlock, flags);
	ret = dom->iop->map(dom->iop, iova, paddr, size, prot);
	FUNC3(&dom->pgtlock, flags);

	return ret;
}