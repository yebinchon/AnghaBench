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
struct irq_domain {int dummy; } ;
struct irq_data {struct intel_ir_data* chip_data; } ;
struct irq_2_iommu {int dummy; } ;
struct intel_ir_data {struct irq_2_iommu irq_2_iommu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_2_iommu*) ; 
 int /*<<< orphan*/  irq_2_ir_lock ; 
 struct irq_data* FUNC1 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ir_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_domain *domain,
				     unsigned int virq, unsigned int nr_irqs)
{
	struct irq_data *irq_data;
	struct intel_ir_data *data;
	struct irq_2_iommu *irq_iommu;
	unsigned long flags;
	int i;
	for (i = 0; i < nr_irqs; i++) {
		irq_data = FUNC1(domain, virq  + i);
		if (irq_data && irq_data->chip_data) {
			data = irq_data->chip_data;
			irq_iommu = &data->irq_2_iommu;
			FUNC4(&irq_2_ir_lock, flags);
			FUNC0(irq_iommu);
			FUNC5(&irq_2_ir_lock, flags);
			FUNC2(irq_data);
			FUNC3(data);
		}
	}
}