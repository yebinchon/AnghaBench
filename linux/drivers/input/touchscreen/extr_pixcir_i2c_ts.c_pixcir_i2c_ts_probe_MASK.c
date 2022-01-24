#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ max_fingers; } ;
struct pixcir_ts_platform_data {int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; TYPE_3__ chip; } ;
struct pixcir_i2c_ts_data {scalar_t__ max_fingers; void* gpio_enable; void* gpio_wake; void* gpio_reset; void* gpio_attb; TYPE_3__* chip; int /*<<< orphan*/  prop; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {TYPE_2__ dev; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ PIXCIR_MAX_SLOTS ; 
 int /*<<< orphan*/  PIXCIR_POWER_IDLE ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct pixcir_ts_platform_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC7 (struct device*) ; 
 struct pixcir_i2c_ts_data* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct pixcir_i2c_ts_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct pixcir_i2c_ts_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct input_dev*,scalar_t__,int) ; 
 int FUNC13 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,struct pixcir_i2c_ts_data*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  pixcir_input_close ; 
 int /*<<< orphan*/  pixcir_input_open ; 
 int FUNC18 (struct device*,struct pixcir_i2c_ts_data*) ; 
 int /*<<< orphan*/  FUNC19 (struct pixcir_i2c_ts_data*) ; 
 int FUNC20 (struct pixcir_i2c_ts_data*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct pixcir_i2c_ts_data*) ; 
 int /*<<< orphan*/  pixcir_ts_isr ; 
 int /*<<< orphan*/  FUNC22 (struct input_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
			       const struct i2c_device_id *id)
{
	const struct pixcir_ts_platform_data *pdata =
			FUNC3(&client->dev);
	struct device *dev = &client->dev;
	struct pixcir_i2c_ts_data *tsdata;
	struct input_dev *input;
	int error;

	tsdata = FUNC8(dev, sizeof(*tsdata), GFP_KERNEL);
	if (!tsdata)
		return -ENOMEM;

	if (pdata) {
		tsdata->chip = &pdata->chip;
	} else if (dev->of_node) {
		error = FUNC18(dev, tsdata);
		if (error)
			return error;
	} else {
		FUNC2(dev, "platform data not defined\n");
		return -EINVAL;
	}

	if (!tsdata->chip->max_fingers) {
		FUNC2(dev, "Invalid max_fingers in chip data\n");
		return -EINVAL;
	}

	input = FUNC7(dev);
	if (!input) {
		FUNC2(dev, "Failed to allocate input device\n");
		return -ENOMEM;
	}

	tsdata->client = client;
	tsdata->input = input;

	input->name = client->name;
	input->id.bustype = BUS_I2C;
	input->open = pixcir_input_open;
	input->close = pixcir_input_close;
	input->dev.parent = dev;

	if (pdata) {
		FUNC14(input, ABS_MT_POSITION_X, 0, pdata->x_max, 0, 0);
		FUNC14(input, ABS_MT_POSITION_Y, 0, pdata->y_max, 0, 0);
	} else {
		FUNC15(input, EV_ABS, ABS_MT_POSITION_X);
		FUNC15(input, EV_ABS, ABS_MT_POSITION_Y);
		FUNC22(input, true, &tsdata->prop);
		if (!FUNC11(input, ABS_MT_POSITION_X) ||
		    !FUNC11(input, ABS_MT_POSITION_Y)) {
			FUNC2(dev, "Touchscreen size is not specified\n");
			return -EINVAL;
		}
	}

	tsdata->max_fingers = tsdata->chip->max_fingers;
	if (tsdata->max_fingers > PIXCIR_MAX_SLOTS) {
		tsdata->max_fingers = PIXCIR_MAX_SLOTS;
		FUNC4(dev, "Limiting maximum fingers to %d\n",
			 tsdata->max_fingers);
	}

	error = FUNC12(input, tsdata->max_fingers,
				    INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
	if (error) {
		FUNC2(dev, "Error initializing Multi-Touch slots\n");
		return error;
	}

	FUNC16(input, tsdata);

	tsdata->gpio_attb = FUNC5(dev, "attb", GPIOD_IN);
	if (FUNC0(tsdata->gpio_attb)) {
		error = FUNC1(tsdata->gpio_attb);
		FUNC2(dev, "Failed to request ATTB gpio: %d\n", error);
		return error;
	}

	tsdata->gpio_reset = FUNC6(dev, "reset",
						     GPIOD_OUT_LOW);
	if (FUNC0(tsdata->gpio_reset)) {
		error = FUNC1(tsdata->gpio_reset);
		FUNC2(dev, "Failed to request RESET gpio: %d\n", error);
		return error;
	}

	tsdata->gpio_wake = FUNC6(dev, "wake",
						    GPIOD_OUT_HIGH);
	if (FUNC0(tsdata->gpio_wake)) {
		error = FUNC1(tsdata->gpio_wake);
		if (error != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get wake gpio: %d\n", error);
		return error;
	}

	tsdata->gpio_enable = FUNC6(dev, "enable",
						      GPIOD_OUT_HIGH);
	if (FUNC0(tsdata->gpio_enable)) {
		error = FUNC1(tsdata->gpio_enable);
		if (error != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get enable gpio: %d\n", error);
		return error;
	}

	if (tsdata->gpio_enable)
		FUNC17(100);

	error = FUNC9(dev, client->irq, NULL, pixcir_ts_isr,
					  IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					  client->name, tsdata);
	if (error) {
		FUNC2(dev, "failed to request irq %d\n", client->irq);
		return error;
	}

	FUNC19(tsdata);

	/* Always be in IDLE mode to save power, device supports auto wake */
	error = FUNC20(tsdata, PIXCIR_POWER_IDLE);
	if (error) {
		FUNC2(dev, "Failed to set IDLE mode\n");
		return error;
	}

	/* Stop device till opened */
	error = FUNC21(tsdata);
	if (error)
		return error;

	error = FUNC13(input);
	if (error)
		return error;

	FUNC10(client, tsdata);

	return 0;
}