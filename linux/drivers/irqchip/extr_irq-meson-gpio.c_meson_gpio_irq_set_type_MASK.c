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
typedef  int /*<<< orphan*/  u32 ;
struct meson_gpio_irq_controller {int dummy; } ;
struct irq_data {TYPE_1__* domain; } ;
struct TYPE_2__ {struct meson_gpio_irq_controller* host_data; } ;

/* Variables and functions */
 int FUNC0 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (struct meson_gpio_irq_controller*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct irq_data *data, unsigned int type)
{
	struct meson_gpio_irq_controller *ctl = data->domain->host_data;
	u32 *channel_hwirq = FUNC1(data);
	int ret;

	ret = FUNC3(ctl, type, channel_hwirq);
	if (ret)
		return ret;

	return FUNC0(data,
					FUNC2(type));
}