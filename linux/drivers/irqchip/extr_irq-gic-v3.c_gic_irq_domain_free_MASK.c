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
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct irq_data* FUNC0 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct irq_domain *domain, unsigned int virq,
				unsigned int nr_irqs)
{
	int i;

	for (i = 0; i < nr_irqs; i++) {
		struct irq_data *d = FUNC0(domain, virq + i);
		FUNC2(virq + i, NULL);
		FUNC1(d);
	}
}