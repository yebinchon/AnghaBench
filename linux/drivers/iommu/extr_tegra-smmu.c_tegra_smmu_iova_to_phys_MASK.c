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
typedef  unsigned long u32 ;
struct tegra_smmu_as {TYPE_1__* smmu; } ;
struct iommu_domain {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {unsigned long pfn_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long* FUNC1 (struct tegra_smmu_as*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tegra_smmu_as* FUNC2 (struct iommu_domain*) ; 

__attribute__((used)) static phys_addr_t FUNC3(struct iommu_domain *domain,
					   dma_addr_t iova)
{
	struct tegra_smmu_as *as = FUNC2(domain);
	unsigned long pfn;
	dma_addr_t pte_dma;
	u32 *pte;

	pte = FUNC1(as, iova, &pte_dma);
	if (!pte || !*pte)
		return 0;

	pfn = *pte & as->smmu->pfn_mask;

	return FUNC0(pfn);
}