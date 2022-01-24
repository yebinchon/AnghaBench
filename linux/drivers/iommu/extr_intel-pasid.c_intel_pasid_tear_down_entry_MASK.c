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
struct intel_iommu {int /*<<< orphan*/  cap; int /*<<< orphan*/  ecap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_iommu*,struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 struct pasid_entry* FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pasid_entry*) ; 

void FUNC10(struct intel_iommu *iommu,
				 struct device *dev, int pasid)
{
	struct pasid_entry *pte;
	u16 did;

	pte = FUNC6(dev, pasid);
	if (FUNC0(!pte))
		return;

	did = FUNC9(pte);
	FUNC5(dev, pasid);

	if (!FUNC4(iommu->ecap))
		FUNC2(pte, sizeof(*pte));

	FUNC8(iommu, did, pasid);
	FUNC7(iommu, did, pasid);

	/* Device IOTLB doesn't need to be flushed in caching mode. */
	if (!FUNC1(iommu->cap))
		FUNC3(iommu, dev, pasid);
}