#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  union i2c_smbus_data {int dummy; } i2c_smbus_data ;
struct i2c_device_id {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_6__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  addr; int /*<<< orphan*/  adapter; } ;
struct elants_data {int keep_power_in_suspend; int x_max; int y_max; TYPE_2__* input; int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; void* reset_gpio; void* vccio; void* vcc33; struct i2c_client* client; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  sysfs_mutex; } ;
struct TYPE_16__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_17__ {char* name; int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int DEVICE_NAME ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  I2C_SMBUS_BYTE ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MAX_CONTACT_NUM ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 int FUNC5 (TYPE_6__*,int /*<<< orphan*/  (*) (struct elants_data*),struct elants_data*) ; 
 int FUNC6 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_6__*) ; 
 struct elants_data* FUNC9 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (TYPE_6__*,char*) ; 
 int FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct elants_data*) ; 
 int /*<<< orphan*/  elants_attribute_group ; 
 int FUNC12 (struct elants_data*) ; 
 int /*<<< orphan*/  elants_i2c_irq ; 
 int /*<<< orphan*/  FUNC13 (struct elants_data*) ; 
 int FUNC14 (struct elants_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct elants_data*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	union i2c_smbus_data dummy;
	struct elants_data *ts;
	unsigned long irqflags;
	int error;

	if (!FUNC15(client->adapter, I2C_FUNC_I2C)) {
		FUNC3(&client->dev,
			"%s: i2c check functionality error\n", DEVICE_NAME);
		return -ENXIO;
	}

	ts = FUNC9(&client->dev, sizeof(struct elants_data), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	FUNC24(&ts->sysfs_mutex);
	FUNC18(&ts->cmd_done);

	ts->client = client;
	FUNC16(client, ts);

	ts->vcc33 = FUNC10(&client->dev, "vcc33");
	if (FUNC0(ts->vcc33)) {
		error = FUNC1(ts->vcc33);
		if (error != -EPROBE_DEFER)
			FUNC3(&client->dev,
				"Failed to get 'vcc33' regulator: %d\n",
				error);
		return error;
	}

	ts->vccio = FUNC10(&client->dev, "vccio");
	if (FUNC0(ts->vccio)) {
		error = FUNC1(ts->vccio);
		if (error != -EPROBE_DEFER)
			FUNC3(&client->dev,
				"Failed to get 'vccio' regulator: %d\n",
				error);
		return error;
	}

	ts->reset_gpio = FUNC7(&client->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ts->reset_gpio)) {
		error = FUNC1(ts->reset_gpio);

		if (error == -EPROBE_DEFER)
			return error;

		if (error != -ENOENT && error != -ENOSYS) {
			FUNC3(&client->dev,
				"failed to get reset gpio: %d\n",
				error);
			return error;
		}

		ts->keep_power_in_suspend = true;
	}

	error = FUNC14(ts);
	if (error)
		return error;

	error = FUNC5(&client->dev, elants_i2c_power_off, ts);
	if (error) {
		FUNC3(&client->dev,
			"failed to install power off action: %d\n", error);
		FUNC13(ts);
		return error;
	}

	/* Make sure there is something at this address */
	if (FUNC17(client->adapter, client->addr, 0,
			   I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &dummy) < 0) {
		FUNC3(&client->dev, "nothing at this address\n");
		return -ENXIO;
	}

	error = FUNC12(ts);
	if (error) {
		FUNC3(&client->dev, "failed to initialize: %d\n", error);
		return error;
	}

	ts->input = FUNC8(&client->dev);
	if (!ts->input) {
		FUNC3(&client->dev, "Failed to allocate input device\n");
		return -ENOMEM;
	}

	ts->input->name = "Elan Touchscreen";
	ts->input->id.bustype = BUS_I2C;

	FUNC2(BTN_TOUCH, ts->input->keybit);
	FUNC2(EV_ABS, ts->input->evbit);
	FUNC2(EV_KEY, ts->input->evbit);

	/* Single touch input params setup */
	FUNC22(ts->input, ABS_X, 0, ts->x_max, 0, 0);
	FUNC22(ts->input, ABS_Y, 0, ts->y_max, 0, 0);
	FUNC22(ts->input, ABS_PRESSURE, 0, 255, 0, 0);
	FUNC19(ts->input, ABS_X, ts->x_res);
	FUNC19(ts->input, ABS_Y, ts->y_res);

	/* Multitouch input params setup */
	error = FUNC20(ts->input, MAX_CONTACT_NUM,
				    INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
	if (error) {
		FUNC3(&client->dev,
			"failed to initialize MT slots: %d\n", error);
		return error;
	}

	FUNC22(ts->input, ABS_MT_POSITION_X, 0, ts->x_max, 0, 0);
	FUNC22(ts->input, ABS_MT_POSITION_Y, 0, ts->y_max, 0, 0);
	FUNC22(ts->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
	FUNC22(ts->input, ABS_MT_PRESSURE, 0, 255, 0, 0);
	FUNC19(ts->input, ABS_MT_POSITION_X, ts->x_res);
	FUNC19(ts->input, ABS_MT_POSITION_Y, ts->y_res);

	error = FUNC21(ts->input);
	if (error) {
		FUNC3(&client->dev,
			"unable to register input device: %d\n", error);
		return error;
	}

	/*
	 * Platform code (ACPI, DTS) should normally set up interrupt
	 * for us, but in case it did not let's fall back to using falling
	 * edge to be compatible with older Chromebooks.
	 */
	irqflags = FUNC23(client->irq);
	if (!irqflags)
		irqflags = IRQF_TRIGGER_FALLING;

	error = FUNC11(&client->dev, client->irq,
					  NULL, elants_i2c_irq,
					  irqflags | IRQF_ONESHOT,
					  client->name, ts);
	if (error) {
		FUNC3(&client->dev, "Failed to register interrupt\n");
		return error;
	}

	/*
	 * Systems using device tree should set up wakeup via DTS,
	 * the rest will configure device as wakeup source by default.
	 */
	if (!client->dev.of_node)
		FUNC4(&client->dev, true);

	error = FUNC6(&client->dev, &elants_attribute_group);
	if (error) {
		FUNC3(&client->dev, "failed to create sysfs attributes: %d\n",
			error);
		return error;
	}

	return 0;
}