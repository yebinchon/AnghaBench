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
struct TYPE_2__ {int /*<<< orphan*/  brightness_set_blocking; } ;
struct lm3692x_led {int /*<<< orphan*/  regmap; int /*<<< orphan*/  model_id; TYPE_1__ led_dev; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct lm3692x_led* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct lm3692x_led*) ; 
 int /*<<< orphan*/  lm3692x_brightness_set ; 
 int FUNC6 (struct lm3692x_led*) ; 
 int FUNC7 (struct lm3692x_led*) ; 
 int /*<<< orphan*/  lm3692x_regmap_config ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct lm3692x_led *led;
	int ret;

	led = FUNC3(&client->dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	FUNC8(&led->lock);
	led->client = client;
	led->led_dev.brightness_set_blocking = lm3692x_brightness_set;
	led->model_id = id->driver_data;
	FUNC5(client, led);

	led->regmap = FUNC4(client, &lm3692x_regmap_config);
	if (FUNC0(led->regmap)) {
		ret = FUNC1(led->regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	ret = FUNC7(led);
	if (ret)
		return ret;

	ret = FUNC6(led);
	if (ret)
		return ret;

	return 0;
}