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
struct nokia_modem_device {int gpio_amount; TYPE_1__* gpios; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct nokia_modem_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*) ; 
 int FUNC9 (struct device_node*,char*) ; 
 int FUNC10 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct device_node *np = dev->of_node;
	struct nokia_modem_device *modem = FUNC3(dev);
	int gpio_count, gpio_name_count, i, err;

	gpio_count = FUNC8(np);

	if (gpio_count < 0) {
		FUNC2(dev, "missing gpios: %d\n", gpio_count);
		return gpio_count;
	}

	gpio_name_count = FUNC9(np, "gpio-names");

	if (gpio_count != gpio_name_count) {
		FUNC2(dev, "number of gpios does not equal number of gpio names\n");
		return -EINVAL;
	}

	modem->gpios = FUNC5(dev, gpio_count, sizeof(*modem->gpios),
				    GFP_KERNEL);
	if (!modem->gpios)
		return -ENOMEM;

	modem->gpio_amount = gpio_count;

	for (i = 0; i < gpio_count; i++) {
		modem->gpios[i].gpio = FUNC4(dev, NULL, i,
							    GPIOD_OUT_LOW);
		if (FUNC0(modem->gpios[i].gpio)) {
			FUNC2(dev, "Could not get gpio %d\n", i);
			return FUNC1(modem->gpios[i].gpio);
		}

		err = FUNC10(np, "gpio-names", i,
						&(modem->gpios[i].name));
		if (err) {
			FUNC2(dev, "Could not get gpio name %d\n", i);
			return err;
		}

		err = FUNC6(modem->gpios[i].gpio, 0);
		if (err)
			return err;

		err = FUNC7(dev, modem->gpios[i].name,
							modem->gpios[i].gpio);
		if (err)
			return err;
	}

	return 0;
}