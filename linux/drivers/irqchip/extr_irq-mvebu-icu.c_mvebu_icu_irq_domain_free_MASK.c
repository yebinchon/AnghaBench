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
struct mvebu_icu_irq_data {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {struct mvebu_icu_irq_data* chip_data; } ;

/* Variables and functions */
 struct irq_data* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvebu_icu_irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct irq_domain *domain, unsigned int virq,
			  unsigned int nr_irqs)
{
	struct irq_data *d = FUNC0(virq);
	struct mvebu_icu_irq_data *icu_irqd = d->chip_data;

	FUNC1(icu_irqd);

	FUNC2(domain, virq, nr_irqs);
}