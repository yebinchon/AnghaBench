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
struct irq_domain {int dummy; } ;
struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  safe_map; int /*<<< orphan*/  (* write ) (size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * irq_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_FREE ; 
 TYPE_1__* cb ; 
 struct irq_data* FUNC0 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_domain *domain, unsigned int virq,
				 unsigned int nr_irqs)
{
	int i;

	FUNC2(&cb->lock);
	for (i = 0; i < nr_irqs; i++) {
		struct irq_data *d = FUNC0(domain, virq + i);

		FUNC1(d);
		cb->irq_map[d->hwirq] = IRQ_FREE;
		cb->write(d->hwirq, cb->safe_map);
	}
	FUNC3(&cb->lock);
}