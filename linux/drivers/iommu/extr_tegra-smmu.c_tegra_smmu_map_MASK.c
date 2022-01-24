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
typedef  scalar_t__ u32 ;
struct tegra_smmu_as {int dummy; } ;
struct iommu_domain {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 scalar_t__ SMMU_PTE_NONSECURE ; 
 scalar_t__ SMMU_PTE_READABLE ; 
 scalar_t__ SMMU_PTE_WRITABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (struct tegra_smmu_as*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_smmu_as*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_smmu_as*,unsigned long,scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct tegra_smmu_as* FUNC4 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC5(struct iommu_domain *domain, unsigned long iova,
			  phys_addr_t paddr, size_t size, int prot)
{
	struct tegra_smmu_as *as = FUNC4(domain);
	dma_addr_t pte_dma;
	u32 pte_attrs;
	u32 *pte;

	pte = FUNC1(as, iova, &pte_dma);
	if (!pte)
		return -ENOMEM;

	/* If we aren't overwriting a pre-existing entry, increment use */
	if (*pte == 0)
		FUNC2(as, iova);

	pte_attrs = SMMU_PTE_NONSECURE;

	if (prot & IOMMU_READ)
		pte_attrs |= SMMU_PTE_READABLE;

	if (prot & IOMMU_WRITE)
		pte_attrs |= SMMU_PTE_WRITABLE;

	FUNC3(as, iova, pte, pte_dma,
			   FUNC0(paddr) | pte_attrs);

	return 0;
}