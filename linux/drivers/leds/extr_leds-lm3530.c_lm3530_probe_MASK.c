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
struct lm3530_platform_data {scalar_t__ mode; scalar_t__ brt_val; } ;
struct TYPE_2__ {int /*<<< orphan*/  groups; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  name; } ;
struct lm3530_data {scalar_t__ mode; int enable; TYPE_1__ led_dev; struct lm3530_platform_data* pdata; int /*<<< orphan*/ * regulator; int /*<<< orphan*/  brightness; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LED_OFF ; 
 scalar_t__ LM3530_BL_MODE_PWM ; 
 int /*<<< orphan*/  LM3530_LED_DEV ; 
 int /*<<< orphan*/  MAX_BRIGHTNESS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct lm3530_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 struct lm3530_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct lm3530_data*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  lm3530_brightness_set ; 
 int /*<<< orphan*/  lm3530_groups ; 
 int FUNC9 (struct lm3530_data*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct lm3530_platform_data *pdata = FUNC3(&client->dev);
	struct lm3530_data *drvdata;
	int err = 0;

	if (pdata == NULL) {
		FUNC2(&client->dev, "platform data required\n");
		return -ENODEV;
	}

	/* BL mode */
	if (pdata->mode > LM3530_BL_MODE_PWM) {
		FUNC2(&client->dev, "Illegal Mode request\n");
		return -EINVAL;
	}

	if (!FUNC6(client->adapter, I2C_FUNC_I2C)) {
		FUNC2(&client->dev, "I2C_FUNC_I2C not supported\n");
		return -EIO;
	}

	drvdata = FUNC4(&client->dev, sizeof(struct lm3530_data),
				GFP_KERNEL);
	if (drvdata == NULL)
		return -ENOMEM;

	drvdata->mode = pdata->mode;
	drvdata->client = client;
	drvdata->pdata = pdata;
	drvdata->brightness = LED_OFF;
	drvdata->enable = false;
	drvdata->led_dev.name = LM3530_LED_DEV;
	drvdata->led_dev.brightness_set = lm3530_brightness_set;
	drvdata->led_dev.max_brightness = MAX_BRIGHTNESS;
	drvdata->led_dev.groups = lm3530_groups;

	FUNC7(client, drvdata);

	drvdata->regulator = FUNC5(&client->dev, "vin");
	if (FUNC0(drvdata->regulator)) {
		FUNC2(&client->dev, "regulator get failed\n");
		err = FUNC1(drvdata->regulator);
		drvdata->regulator = NULL;
		return err;
	}

	if (drvdata->pdata->brt_val) {
		err = FUNC9(drvdata);
		if (err < 0) {
			FUNC2(&client->dev,
				"Register Init failed: %d\n", err);
			return err;
		}
	}
	err = FUNC8(&client->dev, &drvdata->led_dev);
	if (err < 0) {
		FUNC2(&client->dev, "Register led class failed: %d\n", err);
		return err;
	}

	return 0;
}