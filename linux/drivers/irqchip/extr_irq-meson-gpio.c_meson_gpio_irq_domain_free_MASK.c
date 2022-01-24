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
typedef  int /*<<< orphan*/  u32 ;
struct meson_gpio_irq_controller {int dummy; } ;
struct irq_domain {struct meson_gpio_irq_controller* host_data; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,int) ; 
 struct irq_data* FUNC3 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct meson_gpio_irq_controller*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_domain *domain,
				       unsigned int virq,
				       unsigned int nr_irqs)
{
	struct meson_gpio_irq_controller *ctl = domain->host_data;
	struct irq_data *irq_data;
	u32 *channel_hwirq;

	if (FUNC0(nr_irqs != 1))
		return;

	FUNC2(domain, virq, 1);

	irq_data = FUNC3(domain, virq);
	channel_hwirq = FUNC1(irq_data);

	FUNC4(ctl, channel_hwirq);
}