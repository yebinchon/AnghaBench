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
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {char const* default_trigger; TYPE_1__* dev; int /*<<< orphan*/  brightness; int /*<<< orphan*/  brightness_set_blocking; } ;
struct lt3593_led_data {TYPE_2__ cdev; int /*<<< orphan*/  gpiod; } ;
struct led_init_data {char* default_label; int /*<<< orphan*/  devicename; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LEDS_GPIO_DEFSTATE_OFF ; 
 int LEDS_GPIO_DEFSTATE_ON ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_LT3593_NAME ; 
 int /*<<< orphan*/  LED_OFF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*) ; 
 struct fwnode_handle* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct lt3593_led_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,TYPE_2__*,struct led_init_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC9 (struct fwnode_handle*,char*,char const**) ; 
 int /*<<< orphan*/  lt3593_led_set ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct lt3593_led_data*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct lt3593_led_data *led_data;
	struct fwnode_handle *child;
	int ret, state = LEDS_GPIO_DEFSTATE_OFF;
	struct led_init_data init_data = {};
	const char *tmp;

	if (!dev->of_node)
		return -ENODEV;

	led_data = FUNC6(dev, sizeof(*led_data), GFP_KERNEL);
	if (!led_data)
		return -ENOMEM;

	if (FUNC3(dev) != 1) {
		FUNC2(dev, "Device must have exactly one LED sub-node.");
		return -EINVAL;
	}

	led_data->gpiod = FUNC5(dev, "lltc,ctrl", 0);
	if (FUNC0(led_data->gpiod))
		return FUNC1(led_data->gpiod);

	child = FUNC4(dev, NULL);

	FUNC9(child, "linux,default-trigger",
				    &led_data->cdev.default_trigger);

	if (!FUNC9(child, "default-state", &tmp)) {
		if (!FUNC11(tmp, "on"))
			state = LEDS_GPIO_DEFSTATE_ON;
	}

	led_data->cdev.brightness_set_blocking = lt3593_led_set;
	led_data->cdev.brightness = state ? LED_FULL : LED_OFF;

	init_data.fwnode = child;
	init_data.devicename = LED_LT3593_NAME;
	init_data.default_label = ":";

	ret = FUNC7(dev, &led_data->cdev, &init_data);
	if (ret < 0) {
		FUNC8(child);
		return ret;
	}

	led_data->cdev.dev->of_node = dev->of_node;
	FUNC10(pdev, led_data);

	return 0;
}