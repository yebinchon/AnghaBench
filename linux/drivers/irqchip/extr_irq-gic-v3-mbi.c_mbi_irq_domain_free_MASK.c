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
struct mbi_range {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 struct mbi_range* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC2 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbi_range*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct irq_domain *domain,
				unsigned int virq, unsigned int nr_irqs)
{
	struct irq_data *d = FUNC2(domain, virq);
	struct mbi_range *mbi = FUNC0(d);

	FUNC3(mbi, d->hwirq, nr_irqs);
	FUNC1(domain, virq, nr_irqs);
}