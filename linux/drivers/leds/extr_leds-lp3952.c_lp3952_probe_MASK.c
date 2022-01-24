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
struct lp3952_led_array {int /*<<< orphan*/  regmap; int /*<<< orphan*/  enable_gpio; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct lp3952_led_array* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct lp3952_led_array*) ; 
 int FUNC7 (struct lp3952_led_array*) ; 
 int FUNC8 (struct lp3952_led_array*) ; 
 int /*<<< orphan*/  lp3952_regmap ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int status;
	struct lp3952_led_array *priv;

	priv = FUNC4(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->client = client;

	priv->enable_gpio = FUNC3(&client->dev, "nrst",
					   GPIOD_OUT_HIGH);
	if (FUNC0(priv->enable_gpio)) {
		status = FUNC1(priv->enable_gpio);
		FUNC2(&client->dev, "Failed to enable gpio: %d\n", status);
		return status;
	}

	priv->regmap = FUNC5(client, &lp3952_regmap);
	if (FUNC0(priv->regmap)) {
		int err = FUNC1(priv->regmap);

		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			err);
		return err;
	}

	FUNC6(client, priv);

	status = FUNC7(priv);
	if (status) {
		FUNC2(&client->dev, "Probe failed. Device not found (%d)\n",
			status);
		return status;
	}

	status = FUNC8(priv);
	if (status) {
		FUNC2(&client->dev, "Unable to register led_classdev: %d\n",
			status);
		return status;
	}

	return 0;
}