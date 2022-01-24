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
typedef  int /*<<< orphan*/  u16 ;
struct pasid_entry {int dummy; } ;
struct intel_iommu {int /*<<< orphan*/  cap; int /*<<< orphan*/  ecap; int /*<<< orphan*/  agaw; } ;
struct dmar_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FLPT_DEFAULT_DID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct pasid_entry* FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct pasid_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pasid_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC15 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct pasid_entry*,int) ; 

int FUNC17(struct intel_iommu *iommu,
				   struct dmar_domain *domain,
				   struct device *dev, int pasid)
{
	u16 did = FLPT_DEFAULT_DID;
	struct pasid_entry *pte;

	pte = FUNC5(dev, pasid);
	if (!pte) {
		FUNC2(dev, "Failed to get pasid entry of PASID %d\n", pasid);
		return -ENODEV;
	}

	FUNC9(pte);
	FUNC11(pte, did);
	FUNC10(pte, iommu->agaw);
	FUNC16(pte, 4);
	FUNC12(pte);
	FUNC13(pte, !!FUNC4(iommu->ecap));

	/*
	 * We should set SRE bit as well since the addresses are expected
	 * to be GPAs.
	 */
	FUNC15(pte);
	FUNC14(pte);

	if (!FUNC3(iommu->ecap))
		FUNC1(pte, sizeof(*pte));

	if (FUNC0(iommu->cap)) {
		FUNC8(iommu, did, pasid);
		FUNC7(iommu, did, pasid);
	} else {
		FUNC6(iommu);
	}

	return 0;
}