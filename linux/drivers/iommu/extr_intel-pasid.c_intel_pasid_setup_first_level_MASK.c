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
struct intel_iommu {int /*<<< orphan*/  cap; int /*<<< orphan*/  ecap; int /*<<< orphan*/  agaw; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int EINVAL ; 
 int PASID_FLAG_SUPERVISOR_MODE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  X86_FEATURE_LA57 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pasid_entry*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct pasid_entry* FUNC9 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct pasid_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pasid_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pasid_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC20 (struct pasid_entry*) ; 
 int /*<<< orphan*/  FUNC21 (struct pasid_entry*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 

int FUNC23(struct intel_iommu *iommu,
				  struct device *dev, pgd_t *pgd,
				  int pasid, u16 did, int flags)
{
	struct pasid_entry *pte;

	if (!FUNC6(iommu->ecap)) {
		FUNC22("No first level translation support on %s\n",
		       iommu->name);
		return -EINVAL;
	}

	pte = FUNC9(dev, pasid);
	if (FUNC0(!pte))
		return -EINVAL;

	FUNC13(pte);

	/* Setup the first level page table pointer: */
	FUNC17(pte, (u64)FUNC1(pgd));
	if (flags & PASID_FLAG_SUPERVISOR_MODE) {
		if (!FUNC8(iommu->ecap)) {
			FUNC22("No supervisor request support on %s\n",
			       iommu->name);
			return -EINVAL;
		}
		FUNC20(pte);
	}

#ifdef CONFIG_X86
	if (cpu_feature_enabled(X86_FEATURE_LA57))
		pasid_set_flpm(pte, 1);
#endif /* CONFIG_X86 */

	FUNC15(pte, did);
	FUNC14(pte, iommu->agaw);
	FUNC18(pte, !!FUNC7(iommu->ecap));

	/* Setup Present and PASID Granular Transfer Type: */
	FUNC21(pte, 1);
	FUNC19(pte);

	if (!FUNC5(iommu->ecap))
		FUNC3(pte, sizeof(*pte));

	if (FUNC2(iommu->cap)) {
		FUNC12(iommu, did, pasid);
		FUNC11(iommu, did, pasid);
	} else {
		FUNC10(iommu);
	}

	return 0;
}