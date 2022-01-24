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
struct irq_domain {struct ft010_irq_data* host_data; } ;
struct ft010_irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  ft010_irq_chip ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct ft010_irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int irq,
				irq_hw_number_t hwirq)
{
	struct ft010_irq_data *f = d->host_data;

	FUNC1(irq, f);
	/* All IRQs should set up their type, flags as bad by default */
	FUNC0(irq, &ft010_irq_chip, handle_bad_irq);
	FUNC2(irq);

	return 0;
}