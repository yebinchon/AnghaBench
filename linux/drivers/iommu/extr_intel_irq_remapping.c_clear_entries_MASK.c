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
struct irte {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
struct irq_2_iommu {int irte_index; int irte_mask; struct intel_iommu* iommu; scalar_t__ sub_handle; } ;
struct intel_iommu {TYPE_1__* ir_table; } ;
struct TYPE_2__ {int /*<<< orphan*/  bitmap; struct irte* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct intel_iommu*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_2_iommu *irq_iommu)
{
	struct irte *start, *entry, *end;
	struct intel_iommu *iommu;
	int index;

	if (irq_iommu->sub_handle)
		return 0;

	iommu = irq_iommu->iommu;
	index = irq_iommu->irte_index;

	start = iommu->ir_table->base + index;
	end = start + (1 << irq_iommu->irte_mask);

	for (entry = start; entry < end; entry++) {
		FUNC2(&entry->low, 0);
		FUNC2(&entry->high, 0);
	}
	FUNC0(iommu->ir_table->bitmap, index,
			      irq_iommu->irte_mask);

	return FUNC1(iommu, index, irq_iommu->irte_mask);
}