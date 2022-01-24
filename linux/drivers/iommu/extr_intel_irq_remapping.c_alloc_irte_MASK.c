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
typedef  int u16 ;
struct irq_2_iommu {int irte_index; unsigned int irte_mask; int /*<<< orphan*/  mode; scalar_t__ sub_handle; struct intel_iommu* iommu; } ;
struct ir_table {int /*<<< orphan*/  bitmap; } ;
struct intel_iommu {int /*<<< orphan*/  seq_id; int /*<<< orphan*/  ecap; struct ir_table* ir_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_REMAP_TABLE_ENTRIES ; 
 int /*<<< orphan*/  IRQ_REMAPPING ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  irq_2_ir_lock ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct intel_iommu *iommu,
		      struct irq_2_iommu *irq_iommu, u16 count)
{
	struct ir_table *table = iommu->ir_table;
	unsigned int mask = 0;
	unsigned long flags;
	int index;

	if (!count || !irq_iommu)
		return -1;

	if (count > 1) {
		count = FUNC0(count);
		mask = FUNC3(count);
	}

	if (mask > FUNC2(iommu->ecap)) {
		FUNC4("Requested mask %x exceeds the max invalidation handle"
		       " mask value %Lx\n", mask,
		       FUNC2(iommu->ecap));
		return -1;
	}

	FUNC6(&irq_2_ir_lock, flags);
	index = FUNC1(table->bitmap,
					INTR_REMAP_TABLE_ENTRIES, mask);
	if (index < 0) {
		FUNC5("IR%d: can't allocate an IRTE\n", iommu->seq_id);
	} else {
		irq_iommu->iommu = iommu;
		irq_iommu->irte_index =  index;
		irq_iommu->sub_handle = 0;
		irq_iommu->irte_mask = mask;
		irq_iommu->mode = IRQ_REMAPPING;
	}
	FUNC7(&irq_2_ir_lock, flags);

	return index;
}