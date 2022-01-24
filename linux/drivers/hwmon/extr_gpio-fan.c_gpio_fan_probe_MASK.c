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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct gpio_fan_data {scalar_t__ num_gpios; int num_speed; int /*<<< orphan*/  cdev; scalar_t__ alarm_gpio; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  speed; scalar_t__ gpios; int /*<<< orphan*/  lock; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,struct gpio_fan_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,struct gpio_fan_data*,int /*<<< orphan*/ ) ; 
 struct gpio_fan_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct device_node*,char*,struct gpio_fan_data*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct gpio_fan_data*) ; 
 int FUNC8 (struct gpio_fan_data*) ; 
 int /*<<< orphan*/  gpio_fan_cool_ops ; 
 int FUNC9 (struct gpio_fan_data*) ; 
 int /*<<< orphan*/  gpio_fan_groups ; 
 int /*<<< orphan*/  gpio_fan_stop ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct gpio_fan_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	int err;
	struct gpio_fan_data *fan_data;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;

	fan_data = FUNC5(dev, sizeof(struct gpio_fan_data),
				GFP_KERNEL);
	if (!fan_data)
		return -ENOMEM;

	fan_data->dev = dev;
	err = FUNC9(fan_data);
	if (err)
		return err;

	FUNC11(pdev, fan_data);
	FUNC10(&fan_data->lock);

	/* Configure control GPIOs if available. */
	if (fan_data->gpios && fan_data->num_gpios > 0) {
		if (!fan_data->speed || fan_data->num_speed <= 1)
			return -EINVAL;
		err = FUNC8(fan_data);
		if (err)
			return err;
		err = FUNC3(dev, gpio_fan_stop, fan_data);
		if (err)
			return err;
	}

	/* Make this driver part of hwmon class. */
	fan_data->hwmon_dev =
		FUNC4(dev,
						       "gpio_fan", fan_data,
						       gpio_fan_groups);
	if (FUNC0(fan_data->hwmon_dev))
		return FUNC1(fan_data->hwmon_dev);

	/* Configure alarm GPIO if available. */
	if (fan_data->alarm_gpio) {
		err = FUNC7(fan_data);
		if (err)
			return err;
	}

	/* Optional cooling device register for Device tree platforms */
	fan_data->cdev = FUNC6(dev, np,
				"gpio-fan", fan_data, &gpio_fan_cool_ops);

	FUNC2(dev, "GPIO fan initialized\n");

	return 0;
}