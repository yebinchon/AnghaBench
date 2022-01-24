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
struct s3c_irq_intc {int /*<<< orphan*/  domain; struct s3c_irq_data* irqs; int /*<<< orphan*/  reg_mask; struct s3c_irq_intc* parent; } ;
struct s3c_irq_data {unsigned long offset; size_t parent_irq; unsigned long sub_bits; struct s3c_irq_intc* intc; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct s3c_irq_data* FUNC0 (struct irq_data*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 struct irq_data* FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct s3c_irq_data *irq_data = FUNC0(data);
	struct s3c_irq_intc *intc = irq_data->intc;
	struct s3c_irq_intc *parent_intc = intc->parent;
	struct s3c_irq_data *parent_data;
	unsigned long mask;
	unsigned int irqno;

	mask = FUNC3(intc->reg_mask);
	mask |= (1UL << irq_data->offset);
	FUNC4(mask, intc->reg_mask);

	if (parent_intc) {
		parent_data = &parent_intc->irqs[irq_data->parent_irq];

		/* check to see if we need to mask the parent IRQ
		 * The parent_irq is always in main_intc, so the hwirq
		 * for find_mapping does not need an offset in any case.
		 */
		if ((mask & parent_data->sub_bits) == parent_data->sub_bits) {
			irqno = FUNC1(parent_intc->domain,
					 irq_data->parent_irq);
			FUNC5(FUNC2(irqno));
		}
	}
}