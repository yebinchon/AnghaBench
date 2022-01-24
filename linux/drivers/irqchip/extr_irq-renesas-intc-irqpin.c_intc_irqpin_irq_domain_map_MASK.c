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
struct irq_domain {struct intc_irqpin_priv* host_data; } ;
struct intc_irqpin_priv {int /*<<< orphan*/  irq_chip; TYPE_1__* irq; } ;
typedef  size_t irq_hw_number_t ;
struct TYPE_2__ {unsigned int domain_irq; size_t hw_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  intc_irqpin_irq_lock_class ; 
 int /*<<< orphan*/  intc_irqpin_irq_request_class ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct intc_irqpin_priv*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *h, unsigned int virq,
				      irq_hw_number_t hw)
{
	struct intc_irqpin_priv *p = h->host_data;

	p->irq[hw].domain_irq = virq;
	p->irq[hw].hw_irq = hw;

	FUNC0(&p->irq[hw], "map");
	FUNC2(virq, h->host_data);
	FUNC3(virq, &intc_irqpin_irq_lock_class,
			      &intc_irqpin_irq_request_class);
	FUNC1(virq, &p->irq_chip, handle_level_irq);
	return 0;
}