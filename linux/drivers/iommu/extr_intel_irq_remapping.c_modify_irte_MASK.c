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
struct irte {int pst; int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
struct irq_2_iommu {int irte_index; int sub_handle; int /*<<< orphan*/  mode; struct intel_iommu* iommu; } ;
struct intel_iommu {TYPE_1__* ir_table; } ;
struct TYPE_2__ {struct irte* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_POSTING ; 
 int /*<<< orphan*/  IRQ_REMAPPING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_iommu*,struct irte*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_2_ir_lock ; 
 int FUNC3 (struct intel_iommu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct irq_2_iommu *irq_iommu,
		       struct irte *irte_modified)
{
	struct intel_iommu *iommu;
	unsigned long flags;
	struct irte *irte;
	int rc, index;

	if (!irq_iommu)
		return -1;

	FUNC4(&irq_2_ir_lock, flags);

	iommu = irq_iommu->iommu;

	index = irq_iommu->irte_index + irq_iommu->sub_handle;
	irte = &iommu->ir_table->base[index];

#if defined(CONFIG_HAVE_CMPXCHG_DOUBLE)
	if ((irte->pst == 1) || (irte_modified->pst == 1)) {
		bool ret;

		ret = cmpxchg_double(&irte->low, &irte->high,
				     irte->low, irte->high,
				     irte_modified->low, irte_modified->high);
		/*
		 * We use cmpxchg16 to atomically update the 128-bit IRTE,
		 * and it cannot be updated by the hardware or other processors
		 * behind us, so the return value of cmpxchg16 should be the
		 * same as the old value.
		 */
		WARN_ON(!ret);
	} else
#endif
	{
		FUNC6(&irte->low, irte_modified->low);
		FUNC6(&irte->high, irte_modified->high);
	}
	FUNC1(iommu, irte, sizeof(*irte));

	rc = FUNC3(iommu, index, 0);

	/* Update iommu mode according to the IRTE mode */
	irq_iommu->mode = irte->pst ? IRQ_POSTING : IRQ_REMAPPING;
	FUNC5(&irq_2_ir_lock, flags);

	return rc;
}