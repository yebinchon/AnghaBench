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
struct irq_domain {struct irq_chip* host_data; } ;
struct irq_chip {int dummy; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ HW_IRQ_IPI_COUNT ; 
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct irq_domain*,unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct irq_domain *d, unsigned int irq,
		irq_hw_number_t hw)
{
	if (hw < HW_IRQ_IPI_COUNT) {
		struct irq_chip *irq_chip = d->host_data;
		FUNC1(irq, irq_chip,
				handle_percpu_irq, "ipi");
		FUNC2(irq, IRQ_LEVEL);
		return 0;
	}
	FUNC4(FUNC0(FUNC3(irq)));
	return FUNC5(d, irq, hw);
}