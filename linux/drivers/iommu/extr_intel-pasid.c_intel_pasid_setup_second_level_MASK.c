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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct pasid_entry {int dummy; } ;
struct intel_iommu {int agaw; size_t seq_id; int /*<<< orphan*/  cap; int /*<<< orphan*/  ecap; int /*<<< orphan*/  name; } ;
struct dmar_domain {int agaw; int /*<<< orphan*/ * iommu_did; struct dma_pte* pgd; } ;
struct dma_pte {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_pte*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct pasid_entry* FUNC8 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pasid_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct pasid_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC20 (struct pasid_entry*,int) ; 
 struct dma_pte* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct dma_pte*) ; 

int FUNC24(struct intel_iommu *iommu,
				   struct dmar_domain *domain,
				   struct device *dev, int pasid)
{
	struct pasid_entry *pte;
	struct dma_pte *pgd;
	u64 pgd_val;
	int agaw;
	u16 did;

	/*
	 * If hardware advertises no support for second level
	 * translation, return directly.
	 */
	if (!FUNC6(iommu->ecap)) {
		FUNC22("No second level translation support on %s\n",
		       iommu->name);
		return -EINVAL;
	}

	/*
	 * Skip top levels of page tables for iommu which has less agaw
	 * than default. Unnecessary for PT mode.
	 */
	pgd = domain->pgd;
	for (agaw = domain->agaw; agaw > iommu->agaw; agaw--) {
		pgd = FUNC21(FUNC3(pgd));
		if (!FUNC4(pgd)) {
			FUNC2(dev, "Invalid domain page table\n");
			return -EINVAL;
		}
	}

	pgd_val = FUNC23(pgd);
	did = domain->iommu_did[iommu->seq_id];

	pte = FUNC8(dev, pasid);
	if (!pte) {
		FUNC2(dev, "Failed to get pasid entry of PASID %d\n", pasid);
		return -ENODEV;
	}

	FUNC12(pte);
	FUNC14(pte, did);
	FUNC18(pte, pgd_val);
	FUNC13(pte, agaw);
	FUNC20(pte, 2);
	FUNC15(pte);
	FUNC16(pte, !!FUNC7(iommu->ecap));

	/*
	 * Since it is a second level only translation setup, we should
	 * set SRE bit as well (addresses are expected to be GPAs).
	 */
	FUNC19(pte);
	FUNC17(pte);

	if (!FUNC5(iommu->ecap))
		FUNC1(pte, sizeof(*pte));

	if (FUNC0(iommu->cap)) {
		FUNC11(iommu, did, pasid);
		FUNC10(iommu, did, pasid);
	} else {
		FUNC9(iommu);
	}

	return 0;
}