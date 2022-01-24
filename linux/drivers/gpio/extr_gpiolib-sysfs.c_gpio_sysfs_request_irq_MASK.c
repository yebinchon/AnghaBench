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
struct gpiod_data {scalar_t__ irq; unsigned char irq_flags; int /*<<< orphan*/  value_kn; struct gpio_desc* desc; } ;
struct gpio_desc {TYPE_2__* gdev; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  sd; } ;
struct device {TYPE_1__ kobj; } ;
struct TYPE_4__ {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FLAG_ACTIVE_LOW ; 
 unsigned char GPIO_IRQF_TRIGGER_FALLING ; 
 unsigned char GPIO_IRQF_TRIGGER_RISING ; 
 unsigned long IRQF_SHARED ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 struct gpiod_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  gpio_sysfs_irq ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct gpio_desc*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,unsigned long,char*,struct gpiod_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev, unsigned char flags)
{
	struct gpiod_data	*data = FUNC0(dev);
	struct gpio_desc	*desc = data->desc;
	unsigned long		irq_flags;
	int			ret;

	data->irq = FUNC4(desc);
	if (data->irq < 0)
		return -EIO;

	data->value_kn = FUNC6(dev->kobj.sd, "value");
	if (!data->value_kn)
		return -ENODEV;

	irq_flags = IRQF_SHARED;
	if (flags & GPIO_IRQF_TRIGGER_FALLING)
		irq_flags |= FUNC8(FLAG_ACTIVE_LOW, &desc->flags) ?
			IRQF_TRIGGER_RISING : IRQF_TRIGGER_FALLING;
	if (flags & GPIO_IRQF_TRIGGER_RISING)
		irq_flags |= FUNC8(FLAG_ACTIVE_LOW, &desc->flags) ?
			IRQF_TRIGGER_FALLING : IRQF_TRIGGER_RISING;

	/*
	 * FIXME: This should be done in the irq_request_resources callback
	 *        when the irq is requested, but a few drivers currently fail
	 *        to do so.
	 *
	 *        Remove this redundant call (along with the corresponding
	 *        unlock) when those drivers have been fixed.
	 */
	ret = FUNC2(desc->gdev->chip, FUNC1(desc));
	if (ret < 0)
		goto err_put_kn;

	ret = FUNC5(data->irq, gpio_sysfs_irq, irq_flags,
				"gpiolib", data);
	if (ret < 0)
		goto err_unlock;

	data->irq_flags = flags;

	return 0;

err_unlock:
	FUNC3(desc->gdev->chip, FUNC1(desc));
err_put_kn:
	FUNC7(data->value_kn);

	return ret;
}