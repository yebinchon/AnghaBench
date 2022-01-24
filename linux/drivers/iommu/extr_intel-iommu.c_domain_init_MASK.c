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
struct intel_iommu {int /*<<< orphan*/  node; int /*<<< orphan*/  cap; int /*<<< orphan*/  ecap; } ;
struct dmar_domain {int gaw; int agaw; int iommu_coherency; int iommu_snooping; struct dma_pte* pgd; int /*<<< orphan*/  nid; scalar_t__ iommu_superpage; int /*<<< orphan*/  iovad; } ;
struct dma_pte {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IOVA_START_PFN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VTD_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_iommu*,struct dma_pte*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned long*,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ intel_iommu_superpage ; 
 int /*<<< orphan*/  iommu_flush_iova ; 
 int /*<<< orphan*/  iova_entry_free ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,unsigned long*) ; 
 int FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct dmar_domain *domain, struct intel_iommu *iommu,
		       int guest_width)
{
	int adjust_width, agaw;
	unsigned long sagaw;
	int err;

	FUNC11(&domain->iovad, VTD_PAGE_SIZE, IOVA_START_PFN);

	err = FUNC12(&domain->iovad,
				    iommu_flush_iova, iova_entry_free);
	if (err)
		return err;

	FUNC5(domain);

	/* calculate AGAW */
	if (guest_width > FUNC2(iommu->cap))
		guest_width = FUNC2(iommu->cap);
	domain->gaw = guest_width;
	adjust_width = FUNC10(guest_width);
	agaw = FUNC15(adjust_width);
	sagaw = FUNC3(iommu->cap);
	if (!FUNC14(agaw, &sagaw)) {
		/* hardware doesn't support it, choose a bigger one */
		FUNC13("Hardware doesn't support agaw %d\n", agaw);
		agaw = FUNC8(&sagaw, 5, agaw);
		if (agaw >= 5)
			return -ENODEV;
	}
	domain->agaw = agaw;

	if (FUNC6(iommu->ecap))
		domain->iommu_coherency = 1;
	else
		domain->iommu_coherency = 0;

	if (FUNC7(iommu->ecap))
		domain->iommu_snooping = 1;
	else
		domain->iommu_snooping = 0;

	if (intel_iommu_superpage)
		domain->iommu_superpage = FUNC9(FUNC4(iommu->cap));
	else
		domain->iommu_superpage = 0;

	domain->nid = iommu->node;

	/* always allocate the top pgd */
	domain->pgd = (struct dma_pte *)FUNC1(domain->nid);
	if (!domain->pgd)
		return -ENOMEM;
	FUNC0(iommu, domain->pgd, PAGE_SIZE);
	return 0;
}