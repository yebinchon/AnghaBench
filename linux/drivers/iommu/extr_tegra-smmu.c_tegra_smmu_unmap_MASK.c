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
struct tegra_smmu_as {int dummy; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct tegra_smmu_as*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_smmu_as*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_smmu_as*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_smmu_as* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static size_t FUNC4(struct iommu_domain *domain, unsigned long iova,
			       size_t size, struct iommu_iotlb_gather *gather)
{
	struct tegra_smmu_as *as = FUNC3(domain);
	dma_addr_t pte_dma;
	u32 *pte;

	pte = FUNC0(as, iova, &pte_dma);
	if (!pte || !*pte)
		return 0;

	FUNC2(as, iova, pte, pte_dma, 0);
	FUNC1(as, iova);

	return size;
}