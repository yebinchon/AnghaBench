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
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct goodix_ts_data {int /*<<< orphan*/  cfg_name; int /*<<< orphan*/  id; scalar_t__ gpiod_rst; scalar_t__ gpiod_int; int /*<<< orphan*/  chip; int /*<<< orphan*/  avdd28; int /*<<< orphan*/  vddio; int /*<<< orphan*/  contact_size; int /*<<< orphan*/  firmware_loading_complete; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GOODIX_CONTACT_SIZE ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct goodix_ts_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct goodix_ts_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  goodix_config_cb ; 
 int FUNC5 (struct goodix_ts_data*) ; 
 int /*<<< orphan*/  goodix_disable_regulators ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct goodix_ts_data*) ; 
 int FUNC8 (struct i2c_client*) ; 
 int FUNC9 (struct goodix_ts_data*) ; 
 int FUNC10 (struct goodix_ts_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct goodix_ts_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct goodix_ts_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct goodix_ts_data *ts;
	int error;

	FUNC0(&client->dev, "I2C Address: 0x%02x\n", client->addr);

	if (!FUNC11(client->adapter, I2C_FUNC_I2C)) {
		FUNC1(&client->dev, "I2C check functionality failed.\n");
		return -ENXIO;
	}

	ts = FUNC4(&client->dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->client = client;
	FUNC12(client, ts);
	FUNC13(&ts->firmware_loading_complete);
	ts->contact_size = GOODIX_CONTACT_SIZE;

	error = FUNC7(ts);
	if (error)
		return error;

	/* power up the controller */
	error = FUNC15(ts->avdd28);
	if (error) {
		FUNC1(&client->dev,
			"Failed to enable AVDD28 regulator: %d\n",
			error);
		return error;
	}

	error = FUNC15(ts->vddio);
	if (error) {
		FUNC1(&client->dev,
			"Failed to enable VDDIO regulator: %d\n",
			error);
		FUNC14(ts->avdd28);
		return error;
	}

	error = FUNC2(&client->dev,
					 goodix_disable_regulators, ts);
	if (error)
		return error;

	if (ts->gpiod_int && ts->gpiod_rst) {
		/* reset the controller */
		error = FUNC10(ts);
		if (error) {
			FUNC1(&client->dev, "Controller reset failed.\n");
			return error;
		}
	}

	error = FUNC8(client);
	if (error) {
		FUNC1(&client->dev, "I2C communication failure: %d\n", error);
		return error;
	}

	error = FUNC9(ts);
	if (error) {
		FUNC1(&client->dev, "Read version failed.\n");
		return error;
	}

	ts->chip = FUNC6(ts->id);

	if (ts->gpiod_int && ts->gpiod_rst) {
		/* update device config */
		ts->cfg_name = FUNC3(&client->dev, GFP_KERNEL,
					      "goodix_%d_cfg.bin", ts->id);
		if (!ts->cfg_name)
			return -ENOMEM;

		error = FUNC16(THIS_MODULE, true, ts->cfg_name,
						&client->dev, GFP_KERNEL, ts,
						goodix_config_cb);
		if (error) {
			FUNC1(&client->dev,
				"Failed to invoke firmware loader: %d\n",
				error);
			return error;
		}

		return 0;
	} else {
		error = FUNC5(ts);
		if (error)
			return error;
	}

	return 0;
}