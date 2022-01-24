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
struct intel_iommu {int /*<<< orphan*/  name; int /*<<< orphan*/  reg_phys; int /*<<< orphan*/  ecap; } ;
struct dmar_drhd_unit {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_iommu*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct dmar_drhd_unit *dmaru, struct intel_iommu *iommu)
{
	int ret;
	int eim = FUNC9();

	if (eim && !FUNC0(iommu->ecap)) {
		FUNC7("DRHD %Lx: EIM not supported by DRHD, ecap %Lx\n",
			iommu->reg_phys, iommu->ecap);
		return -ENODEV;
	}

	if (FUNC4(dmaru->hdr, iommu)) {
		FUNC8("DRHD %Lx: failed to parse managed IOAPIC/HPET\n",
			iommu->reg_phys);
		return -ENODEV;
	}

	/* TODO: check all IOAPICs are covered by IOMMU */

	/* Setup Interrupt-remapping now. */
	ret = FUNC1(iommu);
	if (ret) {
		FUNC6("Failed to setup irq remapping for %s\n",
		       iommu->name);
		FUNC2(iommu);
		FUNC5(iommu);
	} else {
		FUNC3(iommu);
	}

	return ret;
}