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
struct intel_iommu {TYPE_1__* ir_table; int /*<<< orphan*/  cap; int /*<<< orphan*/  ecap; } ;
struct dmar_drhd_unit {struct intel_iommu* iommu; } ;
struct TYPE_2__ {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  INTR_REMAP_TABLE_ENTRIES ; 
 int /*<<< orphan*/  IRQ_POSTING_CAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dmar_drhd_unit*,struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_iommu*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_remapping_enabled ; 

int FUNC8(struct dmar_drhd_unit *dmaru, bool insert)
{
	int ret = 0;
	struct intel_iommu *iommu = dmaru->iommu;

	if (!irq_remapping_enabled)
		return 0;
	if (iommu == NULL)
		return -EINVAL;
	if (!FUNC3(iommu->ecap))
		return 0;
	if (FUNC7(IRQ_POSTING_CAP) &&
	    !FUNC1(iommu->cap))
		return -EBUSY;

	if (insert) {
		if (!iommu->ir_table)
			ret = FUNC2(dmaru, iommu);
	} else {
		if (iommu->ir_table) {
			if (!FUNC0(iommu->ir_table->bitmap,
					  INTR_REMAP_TABLE_ENTRIES)) {
				ret = -EBUSY;
			} else {
				FUNC5(iommu);
				FUNC4(iommu);
				FUNC6(iommu);
			}
		}
	}

	return ret;
}