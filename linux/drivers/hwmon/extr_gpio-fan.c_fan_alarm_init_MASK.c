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
struct gpio_fan_data {int /*<<< orphan*/  alarm_work; int /*<<< orphan*/  alarm_gpio; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct gpio_fan_data*) ; 
 int /*<<< orphan*/  fan_alarm_irq_handler ; 
 int /*<<< orphan*/  fan_alarm_notify ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_fan_data *fan_data)
{
	int alarm_irq;
	struct device *dev = fan_data->dev;

	/*
	 * If the alarm GPIO don't support interrupts, just leave
	 * without initializing the fail notification support.
	 */
	alarm_irq = FUNC2(fan_data->alarm_gpio);
	if (alarm_irq <= 0)
		return 0;

	FUNC0(&fan_data->alarm_work, fan_alarm_notify);
	FUNC3(alarm_irq, IRQ_TYPE_EDGE_BOTH);
	return FUNC1(dev, alarm_irq, fan_alarm_irq_handler,
				IRQF_SHARED, "GPIO fan alarm", fan_data);
}