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
struct partition_desc {int /*<<< orphan*/  chained_desc; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct irq_chip {int (* irq_set_irqchip_state ) (struct irq_data*,int,int) ;} ;
typedef  enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;

/* Variables and functions */
 int EINVAL ; 
 struct partition_desc* FUNC0 (struct irq_data*) ; 
 struct irq_chip* FUNC1 (int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct partition_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct irq_data*,int,int) ; 

__attribute__((used)) static int FUNC6(struct irq_data *d,
					   enum irqchip_irq_state which,
					   bool val)
{
	struct partition_desc *part = FUNC0(d);
	struct irq_chip *chip = FUNC1(part->chained_desc);
	struct irq_data *data = FUNC2(part->chained_desc);

	if (FUNC3(part, FUNC4(), d->hwirq) &&
	    chip->irq_set_irqchip_state)
		return chip->irq_set_irqchip_state(data, which, val);

	return -EINVAL;
}