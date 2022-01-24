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
struct lm3697 {int /*<<< orphan*/  regmap; int /*<<< orphan*/ * dev; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct lm3697* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct lm3697*) ; 
 int /*<<< orphan*/  leds ; 
 int FUNC7 (struct lm3697*) ; 
 int FUNC8 (struct lm3697*) ; 
 int /*<<< orphan*/  lm3697_regmap_config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct lm3697*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct lm3697 *led;
	int count;
	int ret;

	count = FUNC3(&client->dev);
	if (!count) {
		FUNC2(&client->dev, "LEDs are not defined in device tree!");
		return -ENODEV;
	}

	led = FUNC4(&client->dev, FUNC10(led, leds, count),
			   GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	FUNC9(&led->lock);
	FUNC6(client, led);

	led->client = client;
	led->dev = &client->dev;
	led->regmap = FUNC5(client, &lm3697_regmap_config);
	if (FUNC0(led->regmap)) {
		ret = FUNC1(led->regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	ret = FUNC8(led);
	if (ret)
		return ret;

	return FUNC7(led);
}