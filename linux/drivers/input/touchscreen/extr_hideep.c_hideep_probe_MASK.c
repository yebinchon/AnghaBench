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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; } ;
struct hideep_ts {void* reset_gpio; void* vcc_vid; void* vcc_vdd; void* reg; int /*<<< orphan*/  dev_mutex; struct i2c_client* client; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hideep_ts*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct hideep_ts* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hideep_ts*) ; 
 int FUNC10 (struct hideep_ts*) ; 
 int /*<<< orphan*/  hideep_irq ; 
 int FUNC11 (struct hideep_ts*) ; 
 int /*<<< orphan*/  hideep_power_off ; 
 int FUNC12 (struct hideep_ts*) ; 
 int /*<<< orphan*/  hideep_regmap_config ; 
 int /*<<< orphan*/  hideep_ts_attr_group ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct hideep_ts*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct hideep_ts *ts;
	int error;

	/* check i2c bus */
	if (!FUNC13(client->adapter, I2C_FUNC_I2C)) {
		FUNC2(&client->dev, "check i2c device error");
		return -ENODEV;
	}

	if (client->irq <= 0) {
		FUNC2(&client->dev, "missing irq: %d\n", client->irq);
		return -EINVAL;
	}

	ts = FUNC6(&client->dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->client = client;
	FUNC14(client, ts);
	FUNC15(&ts->dev_mutex);

	ts->reg = FUNC7(client, &hideep_regmap_config);
	if (FUNC0(ts->reg)) {
		error = FUNC1(ts->reg);
		FUNC2(&client->dev,
			"failed to initialize regmap: %d\n", error);
		return error;
	}

	ts->vcc_vdd = FUNC8(&client->dev, "vdd");
	if (FUNC0(ts->vcc_vdd))
		return FUNC1(ts->vcc_vdd);

	ts->vcc_vid = FUNC8(&client->dev, "vid");
	if (FUNC0(ts->vcc_vid))
		return FUNC1(ts->vcc_vid);

	ts->reset_gpio = FUNC5(&client->dev,
						 "reset", GPIOD_OUT_HIGH);
	if (FUNC0(ts->reset_gpio))
		return FUNC1(ts->reset_gpio);

	error = FUNC12(ts);
	if (error) {
		FUNC2(&client->dev, "power on failed: %d\n", error);
		return error;
	}

	error = FUNC3(&client->dev, hideep_power_off, ts);
	if (error)
		return error;

	error = FUNC11(ts);
	if (error) {
		FUNC2(&client->dev, "failed to load dwz: %d", error);
		return error;
	}

	error = FUNC10(ts);
	if (error)
		return error;

	error = FUNC9(&client->dev, client->irq,
					  NULL, hideep_irq, IRQF_ONESHOT,
					  client->name, ts);
	if (error) {
		FUNC2(&client->dev, "failed to request irq %d: %d\n",
			client->irq, error);
		return error;
	}

	error = FUNC4(&client->dev, &hideep_ts_attr_group);
	if (error) {
		FUNC2(&client->dev,
			"failed to add sysfs attributes: %d\n", error);
		return error;
	}

	return 0;
}