#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  default_trigger; } ;
struct lp8860_led {TYPE_3__ led_dev; int /*<<< orphan*/ * eeprom_regmap; int /*<<< orphan*/ * regmap; int /*<<< orphan*/  lock; struct i2c_client* client; int /*<<< orphan*/ * regulator; int /*<<< orphan*/ * enable_gpio; } ;
struct led_init_data {char* default_label; int /*<<< orphan*/  devicename; int /*<<< orphan*/  fwnode; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LP8860_NAME ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct lp8860_led* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,TYPE_3__*,struct led_init_data*) ; 
 void* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct lp8860_led*) ; 
 int /*<<< orphan*/  lp8860_brightness_set ; 
 int /*<<< orphan*/  lp8860_eeprom_regmap_config ; 
 int FUNC9 (struct lp8860_led*) ; 
 int /*<<< orphan*/  lp8860_regmap_config ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct lp8860_led *led;
	struct device_node *np = client->dev.of_node;
	struct device_node *child_node;
	struct led_init_data init_data = {};

	led = FUNC4(&client->dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	child_node = FUNC12(np, NULL);
	if (!child_node)
		return -EINVAL;

	led->led_dev.default_trigger = FUNC13(child_node,
					    "linux,default-trigger",
					    NULL);

	led->enable_gpio = FUNC3(&client->dev,
						   "enable", GPIOD_OUT_LOW);
	if (FUNC0(led->enable_gpio)) {
		ret = FUNC1(led->enable_gpio);
		FUNC2(&client->dev, "Failed to get enable gpio: %d\n", ret);
		return ret;
	}

	led->regulator = FUNC7(&client->dev, "vled");
	if (FUNC0(led->regulator))
		led->regulator = NULL;

	led->client = client;
	led->led_dev.brightness_set_blocking = lp8860_brightness_set;

	FUNC10(&led->lock);

	FUNC8(client, led);

	led->regmap = FUNC6(client, &lp8860_regmap_config);
	if (FUNC0(led->regmap)) {
		ret = FUNC1(led->regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	led->eeprom_regmap = FUNC6(client, &lp8860_eeprom_regmap_config);
	if (FUNC0(led->eeprom_regmap)) {
		ret = FUNC1(led->eeprom_regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	ret = FUNC9(led);
	if (ret)
		return ret;

	init_data.fwnode = FUNC11(child_node);
	init_data.devicename = LP8860_NAME;
	init_data.default_label = ":display_cluster";

	ret = FUNC5(&client->dev, &led->led_dev,
					     &init_data);
	if (ret) {
		FUNC2(&client->dev, "led register err: %d\n", ret);
		return ret;
	}

	return 0;
}