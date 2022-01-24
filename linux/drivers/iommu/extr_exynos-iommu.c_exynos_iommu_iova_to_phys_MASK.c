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
typedef  int /*<<< orphan*/  sysmmu_pte_t ;
struct iommu_domain {int dummy; } ;
struct exynos_iommu_domain {int /*<<< orphan*/  pgtablelock; int /*<<< orphan*/  pgtable; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 struct exynos_iommu_domain* FUNC14 (struct iommu_domain*) ; 

__attribute__((used)) static phys_addr_t FUNC15(struct iommu_domain *iommu_domain,
					  dma_addr_t iova)
{
	struct exynos_iommu_domain *domain = FUNC14(iommu_domain);
	sysmmu_pte_t *entry;
	unsigned long flags;
	phys_addr_t phys = 0;

	FUNC12(&domain->pgtablelock, flags);

	entry = FUNC7(domain->pgtable, iova);

	if (FUNC3(entry)) {
		phys = FUNC9(entry) + FUNC8(iova);
	} else if (FUNC2(entry)) {
		entry = FUNC6(entry, iova);

		if (FUNC4(entry))
			phys = FUNC1(entry) + FUNC0(iova);
		else if (FUNC5(entry))
			phys = FUNC11(entry) + FUNC10(iova);
	}

	FUNC13(&domain->pgtablelock, flags);

	return phys;
}