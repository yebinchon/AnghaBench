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
struct TYPE_4__ {int /*<<< orphan*/  default_trigger; } ;
struct lm3692x_led {TYPE_1__* client; TYPE_2__ led_dev; int /*<<< orphan*/  led_enable; int /*<<< orphan*/ * regulator; int /*<<< orphan*/ * enable_gpio; } ;
struct led_init_data {char* default_label; int /*<<< orphan*/  devicename; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct fwnode_handle* FUNC3 (int /*<<< orphan*/ *,struct fwnode_handle*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,struct led_init_data*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct fwnode_handle*,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct fwnode_handle*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct lm3692x_led *led)
{
	struct fwnode_handle *child = NULL;
	struct led_init_data init_data = {};
	int ret;

	led->enable_gpio = FUNC4(&led->client->dev,
						   "enable", GPIOD_OUT_LOW);
	if (FUNC0(led->enable_gpio)) {
		ret = FUNC1(led->enable_gpio);
		FUNC2(&led->client->dev, "Failed to get enable gpio: %d\n",
			ret);
		return ret;
	}

	led->regulator = FUNC6(&led->client->dev, "vled");
	if (FUNC0(led->regulator))
		led->regulator = NULL;

	child = FUNC3(&led->client->dev, child);
	if (!child) {
		FUNC2(&led->client->dev, "No LED Child node\n");
		return -ENODEV;
	}

	FUNC7(child, "linux,default-trigger",
				    &led->led_dev.default_trigger);

	ret = FUNC8(child, "reg", &led->led_enable);
	if (ret) {
		FUNC2(&led->client->dev, "reg DT property missing\n");
		return ret;
	}

	init_data.fwnode = child;
	init_data.devicename = led->client->name;
	init_data.default_label = ":";

	ret = FUNC5(&led->client->dev, &led->led_dev,
					     &init_data);
	if (ret) {
		FUNC2(&led->client->dev, "led register err: %d\n", ret);
		return ret;
	}

	return 0;
}