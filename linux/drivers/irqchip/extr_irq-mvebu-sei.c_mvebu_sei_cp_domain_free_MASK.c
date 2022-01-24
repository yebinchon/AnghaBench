#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mvebu_sei {int /*<<< orphan*/  dev; TYPE_2__* caps; } ;
struct irq_domain {struct mvebu_sei* host_data; } ;
struct irq_data {scalar_t__ hwirq; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ cp_range; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,int) ; 
 struct irq_data* FUNC2 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvebu_sei*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_domain *domain,
				     unsigned int virq, unsigned int nr_irqs)
{
	struct mvebu_sei *sei = domain->host_data;
	struct irq_data *d = FUNC2(domain, virq);

	if (nr_irqs != 1 || d->hwirq >= sei->caps->cp_range.size) {
		FUNC0(sei->dev, "Invalid hwirq %lu\n", d->hwirq);
		return;
	}

	FUNC3(sei, d->hwirq);
	FUNC1(domain, virq, 1);
}