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
struct irq_fwspec {int dummy; } ;
struct irq_domain {struct meson_gpio_irq_controller* host_data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  meson_gpio_irq_chip ; 
 int FUNC3 (struct irq_domain*,struct irq_fwspec*,unsigned long*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct meson_gpio_irq_controller*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct meson_gpio_irq_controller*,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct irq_domain *domain,
				       unsigned int virq,
				       unsigned int nr_irqs,
				       void *data)
{
	struct irq_fwspec *fwspec = data;
	struct meson_gpio_irq_controller *ctl = domain->host_data;
	unsigned long hwirq;
	u32 *channel_hwirq;
	unsigned int type;
	int ret;

	if (FUNC0(nr_irqs != 1))
		return -EINVAL;

	ret = FUNC3(domain, fwspec, &hwirq, &type);
	if (ret)
		return ret;

	ret = FUNC5(ctl, hwirq, &channel_hwirq);
	if (ret)
		return ret;

	ret = FUNC2(domain, virq,
					      *channel_hwirq, type);
	if (ret < 0) {
		FUNC6("failed to allocate gic irq %u\n", *channel_hwirq);
		FUNC4(ctl, channel_hwirq);
		return ret;
	}

	FUNC1(domain, virq, hwirq,
				      &meson_gpio_irq_chip, channel_hwirq);

	return 0;
}