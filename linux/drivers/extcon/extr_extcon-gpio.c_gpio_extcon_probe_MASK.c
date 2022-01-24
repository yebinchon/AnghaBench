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
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct gpio_extcon_data {scalar_t__ extcon_id; TYPE_1__ work; int /*<<< orphan*/  edev; int /*<<< orphan*/  gpiod; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ EXTCON_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct gpio_extcon_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct gpio_extcon_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gpio_irq_handler ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct gpio_extcon_data*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct gpio_extcon_data *data;
	struct device *dev = &pdev->dev;
	unsigned long irq_flags;
	int irq;
	int ret;

	data = FUNC7(dev, sizeof(struct gpio_extcon_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/*
	 * FIXME: extcon_id represents the unique identifier of external
	 * connectors such as EXTCON_USB, EXTCON_DISP_HDMI and so on. extcon_id
	 * is necessary to register the extcon device. But, it's not yet
	 * developed to get the extcon id from device-tree or others.
	 * On later, it have to be solved.
	 */
	if (data->extcon_id > EXTCON_NONE)
		return -EINVAL;

	data->gpiod = FUNC6(dev, "extcon", GPIOD_IN);
	if (FUNC1(data->gpiod))
		return FUNC2(data->gpiod);
	irq = FUNC11(data->gpiod);
	if (irq <= 0)
		return irq;

	/*
	 * It is unlikely that this is an acknowledged interrupt that goes
	 * away after handling, what we are looking for are falling edges
	 * if the signal is active low, and rising edges if the signal is
	 * active high.
	 */
	if (FUNC10(data->gpiod))
		irq_flags = IRQF_TRIGGER_FALLING;
	else
		irq_flags = IRQF_TRIGGER_RISING;

	/* Allocate the memory of extcon devie and register extcon device */
	data->edev = FUNC4(dev, &data->extcon_id);
	if (FUNC1(data->edev)) {
		FUNC3(dev, "failed to allocate extcon device\n");
		return -ENOMEM;
	}

	ret = FUNC5(dev, data->edev);
	if (ret < 0)
		return ret;

	FUNC0(&data->work, gpio_extcon_work);

	/*
	 * Request the interrupt of gpio to detect whether external connector
	 * is attached or detached.
	 */
	ret = FUNC8(dev, irq,
					gpio_irq_handler, irq_flags,
					pdev->name, data);
	if (ret < 0)
		return ret;

	FUNC12(pdev, data);
	/* Perform initial detection */
	FUNC9(&data->work.work);

	return 0;
}