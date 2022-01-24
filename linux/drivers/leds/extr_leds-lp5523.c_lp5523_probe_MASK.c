#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lp55xx_platform_data {int /*<<< orphan*/  num_channels; } ;
struct lp55xx_led {int dummy; } ;
struct lp55xx_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/ * cfg; struct lp55xx_platform_data* pdata; struct i2c_client* cl; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct lp55xx_platform_data*) ; 
 int FUNC1 (struct lp55xx_platform_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct lp55xx_platform_data* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct lp55xx_led* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct lp55xx_chip* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct lp55xx_led*) ; 
 int /*<<< orphan*/  lp5523_cfg ; 
 int /*<<< orphan*/  FUNC8 (struct lp55xx_chip*) ; 
 int FUNC9 (struct lp55xx_chip*) ; 
 struct lp55xx_platform_data* FUNC10 (TYPE_1__*,struct device_node*) ; 
 int FUNC11 (struct lp55xx_led*,struct lp55xx_chip*) ; 
 int FUNC12 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct lp55xx_led*,struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct lp55xx_chip *chip;
	struct lp55xx_led *led;
	struct lp55xx_platform_data *pdata = FUNC3(&client->dev);
	struct device_node *np = client->dev.of_node;

	if (!pdata) {
		if (np) {
			pdata = FUNC10(&client->dev, np);
			if (FUNC0(pdata))
				return FUNC1(pdata);
		} else {
			FUNC2(&client->dev, "no platform data\n");
			return -EINVAL;
		}
	}

	chip = FUNC6(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	led = FUNC5(&client->dev,
			pdata->num_channels, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	chip->cl = client;
	chip->pdata = pdata;
	chip->cfg = &lp5523_cfg;

	FUNC14(&chip->lock);

	FUNC7(client, led);

	ret = FUNC9(chip);
	if (ret)
		goto err_init;

	FUNC4(&client->dev, "%s Programmable led chip found\n", id->name);

	ret = FUNC11(led, chip);
	if (ret)
		goto err_register_leds;

	ret = FUNC12(chip);
	if (ret) {
		FUNC2(&client->dev, "registering sysfs failed\n");
		goto err_register_sysfs;
	}

	return 0;

err_register_sysfs:
	FUNC13(led, chip);
err_register_leds:
	FUNC8(chip);
err_init:
	return ret;
}