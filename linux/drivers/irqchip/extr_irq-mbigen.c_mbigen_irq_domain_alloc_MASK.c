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
struct mbigen_device {int /*<<< orphan*/  base; } ;
struct irq_fwspec {int dummy; } ;
struct irq_domain {int dummy; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_domain*,unsigned int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct irq_domain*,struct irq_fwspec*,scalar_t__*,unsigned int*) ; 
 int /*<<< orphan*/  mbigen_irq_chip ; 
 int FUNC2 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct mbigen_device* FUNC3 (struct irq_domain*) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *domain,
					unsigned int virq,
					unsigned int nr_irqs,
					void *args)
{
	struct irq_fwspec *fwspec = args;
	irq_hw_number_t hwirq;
	unsigned int type;
	struct mbigen_device *mgn_chip;
	int i, err;

	err = FUNC1(domain, fwspec, &hwirq, &type);
	if (err)
		return err;

	err = FUNC2(domain, virq, nr_irqs);
	if (err)
		return err;

	mgn_chip = FUNC3(domain);

	for (i = 0; i < nr_irqs; i++)
		FUNC0(domain, virq + i, hwirq + i,
				      &mbigen_irq_chip, mgn_chip->base);

	return 0;
}