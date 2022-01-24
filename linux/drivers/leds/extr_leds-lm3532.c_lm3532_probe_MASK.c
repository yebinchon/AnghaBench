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
struct lm3532_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * dev; struct i2c_client* client; } ;
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
 struct lm3532_data* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct lm3532_data*) ; 
 int /*<<< orphan*/  leds ; 
 int FUNC7 (struct lm3532_data*) ; 
 int /*<<< orphan*/  lm3532_regmap_config ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct lm3532_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct lm3532_data *drvdata;
	int ret = 0;
	int count;

	count = FUNC3(&client->dev);
	if (!count) {
		FUNC2(&client->dev, "LEDs are not defined in device tree!");
		return -ENODEV;
	}

	drvdata = FUNC4(&client->dev, FUNC9(drvdata, leds, count),
			   GFP_KERNEL);
	if (drvdata == NULL)
		return -ENOMEM;

	drvdata->client = client;
	drvdata->dev = &client->dev;

	drvdata->regmap = FUNC5(client, &lm3532_regmap_config);
	if (FUNC0(drvdata->regmap)) {
		ret = FUNC1(drvdata->regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC8(&drvdata->lock);
	FUNC6(client, drvdata);

	ret = FUNC7(drvdata);
	if (ret) {
		FUNC2(&client->dev, "Failed to parse node\n");
		return ret;
	}

	return ret;
}