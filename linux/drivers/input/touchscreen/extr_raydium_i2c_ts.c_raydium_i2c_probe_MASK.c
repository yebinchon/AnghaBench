#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  union i2c_smbus_data {int dummy; } i2c_smbus_data ;
struct TYPE_9__ {int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; } ;
struct raydium_data {TYPE_3__* input; TYPE_2__ info; int /*<<< orphan*/  report_data; int /*<<< orphan*/  pkg_size; void* reset_gpio; void* vccio; void* avdd; struct i2c_client* client; int /*<<< orphan*/  sysfs_mutex; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  addr; int /*<<< orphan*/  adapter; } ;
struct TYPE_8__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_10__ {char* name; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  I2C_SMBUS_BYTE ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  RM_MAX_TOUCH_NUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct raydium_data*),struct raydium_data*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct raydium_data* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct raydium_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct raydium_data*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raydium_i2c_attribute_group ; 
 int FUNC20 (struct raydium_data*) ; 
 int /*<<< orphan*/  raydium_i2c_irq ; 
 int /*<<< orphan*/  FUNC21 (struct raydium_data*) ; 
 int FUNC22 (struct raydium_data*) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	union i2c_smbus_data dummy;
	struct raydium_data *ts;
	int error;

	if (!FUNC11(client->adapter, I2C_FUNC_I2C)) {
		FUNC2(&client->dev,
			"i2c check functionality error (need I2C_FUNC_I2C)\n");
		return -ENXIO;
	}

	ts = FUNC8(&client->dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	FUNC19(&ts->sysfs_mutex);

	ts->client = client;
	FUNC12(client, ts);

	ts->avdd = FUNC9(&client->dev, "avdd");
	if (FUNC0(ts->avdd)) {
		error = FUNC1(ts->avdd);
		if (error != -EPROBE_DEFER)
			FUNC2(&client->dev,
				"Failed to get 'avdd' regulator: %d\n", error);
		return error;
	}

	ts->vccio = FUNC9(&client->dev, "vccio");
	if (FUNC0(ts->vccio)) {
		error = FUNC1(ts->vccio);
		if (error != -EPROBE_DEFER)
			FUNC2(&client->dev,
				"Failed to get 'vccio' regulator: %d\n", error);
		return error;
	}

	ts->reset_gpio = FUNC5(&client->dev, "reset",
						 GPIOD_OUT_LOW);
	if (FUNC0(ts->reset_gpio)) {
		error = FUNC1(ts->reset_gpio);
		if (error != -EPROBE_DEFER)
			FUNC2(&client->dev,
				"failed to get reset gpio: %d\n", error);
		return error;
	}

	error = FUNC22(ts);
	if (error)
		return error;

	error = FUNC3(&client->dev, raydium_i2c_power_off, ts);
	if (error) {
		FUNC2(&client->dev,
			"failed to install power off action: %d\n", error);
		FUNC21(ts);
		return error;
	}

	/* Make sure there is something at this address */
	if (FUNC13(client->adapter, client->addr, 0,
			   I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &dummy) < 0) {
		FUNC2(&client->dev, "nothing at this address\n");
		return -ENXIO;
	}

	error = FUNC20(ts);
	if (error) {
		FUNC2(&client->dev, "failed to initialize: %d\n", error);
		return error;
	}

	ts->report_data = FUNC7(&client->dev,
				       ts->pkg_size, GFP_KERNEL);
	if (!ts->report_data)
		return -ENOMEM;

	ts->input = FUNC6(&client->dev);
	if (!ts->input) {
		FUNC2(&client->dev, "Failed to allocate input device\n");
		return -ENOMEM;
	}

	ts->input->name = "Raydium Touchscreen";
	ts->input->id.bustype = BUS_I2C;

	FUNC17(ts->input, ABS_MT_POSITION_X,
			     0, FUNC18(ts->info.x_max), 0, 0);
	FUNC17(ts->input, ABS_MT_POSITION_Y,
			     0, FUNC18(ts->info.y_max), 0, 0);
	FUNC14(ts->input, ABS_MT_POSITION_X, ts->info.x_res);
	FUNC14(ts->input, ABS_MT_POSITION_Y, ts->info.y_res);

	FUNC17(ts->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
	FUNC17(ts->input, ABS_MT_PRESSURE, 0, 255, 0, 0);

	error = FUNC15(ts->input, RM_MAX_TOUCH_NUM,
				    INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
	if (error) {
		FUNC2(&client->dev,
			"failed to initialize MT slots: %d\n", error);
		return error;
	}

	error = FUNC16(ts->input);
	if (error) {
		FUNC2(&client->dev,
			"unable to register input device: %d\n", error);
		return error;
	}

	error = FUNC10(&client->dev, client->irq,
					  NULL, raydium_i2c_irq,
					  IRQF_ONESHOT, client->name, ts);
	if (error) {
		FUNC2(&client->dev, "Failed to register interrupt\n");
		return error;
	}

	error = FUNC4(&client->dev,
				   &raydium_i2c_attribute_group);
	if (error) {
		FUNC2(&client->dev, "failed to create sysfs attributes: %d\n",
			error);
		return error;
	}

	return 0;
}