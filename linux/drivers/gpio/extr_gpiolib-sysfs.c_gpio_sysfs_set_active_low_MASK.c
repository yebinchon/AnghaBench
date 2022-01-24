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
struct gpiod_data {unsigned int irq_flags; struct gpio_desc* desc; } ;
struct gpio_desc {int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_ACTIVE_LOW ; 
 unsigned int GPIO_IRQF_TRIGGER_FALLING ; 
 unsigned int GPIO_IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gpiod_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, int value)
{
	struct gpiod_data	*data = FUNC1(dev);
	struct gpio_desc	*desc = data->desc;
	int			status = 0;
	unsigned int		flags = data->irq_flags;

	if (!!FUNC5(FLAG_ACTIVE_LOW, &desc->flags) == !!value)
		return 0;

	if (value)
		FUNC4(FLAG_ACTIVE_LOW, &desc->flags);
	else
		FUNC0(FLAG_ACTIVE_LOW, &desc->flags);

	/* reconfigure poll(2) support if enabled on one edge only */
	if (flags == GPIO_IRQF_TRIGGER_FALLING ||
					flags == GPIO_IRQF_TRIGGER_RISING) {
		FUNC2(dev);
		status = FUNC3(dev, flags);
	}

	return status;
}