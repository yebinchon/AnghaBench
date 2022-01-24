#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {struct input_absinfo* absinfo; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct input_absinfo {scalar_t__ minimum; int /*<<< orphan*/  maximum; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  invert_y; int /*<<< orphan*/  invert_x; } ;
struct bu21013_ts {scalar_t__ int_gpiod; scalar_t__ cs_gpiod; int /*<<< orphan*/  regulator; TYPE_2__ props; struct input_dev* in_dev; void* y_flip; void* x_flip; struct i2c_client* client; } ;

/* Variables and functions */
 size_t ABS_MT_POSITION_X ; 
 size_t ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  DRIVER_TP ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_TRACK ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_FINGERS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  bu21013_disable_chip ; 
 int /*<<< orphan*/  bu21013_gpio_irq ; 
 int FUNC3 (struct bu21013_ts*) ; 
 int /*<<< orphan*/  bu21013_power_off ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bu21013_ts*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC10 (int /*<<< orphan*/ *) ; 
 struct bu21013_ts* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bu21013_ts*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct bu21013_ts*) ; 
 int FUNC17 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct input_dev*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct input_dev*,struct bu21013_ts*) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct input_dev*,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct bu21013_ts *ts;
	struct input_dev *in_dev;
	struct input_absinfo *info;
	u32 max_x = 0, max_y = 0;
	int error;

	if (!FUNC15(client->adapter,
				     I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC4(&client->dev, "i2c smbus byte data not supported\n");
		return -EIO;
	}

	if (!client->irq) {
		FUNC4(&client->dev, "No IRQ set up\n");
		return -EINVAL;
	}

	ts = FUNC11(&client->dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->client = client;

	ts->x_flip = FUNC5(&client->dev, "rohm,flip-x");
	ts->y_flip = FUNC5(&client->dev, "rohm,flip-y");

	in_dev = FUNC10(&client->dev);
	if (!in_dev) {
		FUNC4(&client->dev, "device memory alloc failed\n");
		return -ENOMEM;
	}
	ts->in_dev = in_dev;
	FUNC20(in_dev, ts);

	/* register the device to input subsystem */
	in_dev->name = DRIVER_TP;
	in_dev->id.bustype = BUS_I2C;

	FUNC6(&client->dev, "rohm,touch-max-x", &max_x);
	FUNC6(&client->dev, "rohm,touch-max-y", &max_y);

	FUNC19(in_dev, ABS_MT_POSITION_X, 0, max_x, 0, 0);
	FUNC19(in_dev, ABS_MT_POSITION_Y, 0, max_y, 0, 0);

	FUNC22(in_dev, true, &ts->props);

	/* Adjust for the legacy "flip" properties, if present */
	if (!ts->props.invert_x &&
	    FUNC5(&client->dev, "rohm,flip-x")) {
		info = &in_dev->absinfo[ABS_MT_POSITION_X];
		info->maximum -= info->minimum;
		info->minimum = 0;
	}

	if (!ts->props.invert_y &&
	    FUNC5(&client->dev, "rohm,flip-y")) {
		info = &in_dev->absinfo[ABS_MT_POSITION_Y];
		info->maximum -= info->minimum;
		info->minimum = 0;
	}

	error = FUNC17(in_dev, MAX_FINGERS,
				    INPUT_MT_DIRECT | INPUT_MT_TRACK |
					INPUT_MT_DROP_UNUSED);
	if (error) {
		FUNC4(&client->dev, "failed to initialize MT slots");
		return error;
	}

	ts->regulator = FUNC12(&client->dev, "avdd");
	if (FUNC0(ts->regulator)) {
		FUNC4(&client->dev, "regulator_get failed\n");
		return FUNC1(ts->regulator);
	}

	error = FUNC21(ts->regulator);
	if (error) {
		FUNC4(&client->dev, "regulator enable failed\n");
		return error;
	}

	error = FUNC7(&client->dev, bu21013_power_off, ts);
	if (error) {
		FUNC4(&client->dev, "failed to install power off handler\n");
		return error;
	}

	/* Named "CS" on the chip, DT binding is "reset" */
	ts->cs_gpiod = FUNC8(&client->dev, "reset", GPIOD_OUT_HIGH);
	error = FUNC2(ts->cs_gpiod);
	if (error) {
		if (error != -EPROBE_DEFER)
			FUNC4(&client->dev, "failed to get CS GPIO\n");
		return error;
	}
	FUNC14(ts->cs_gpiod, "BU21013 CS");

	error = FUNC7(&client->dev,
					 bu21013_disable_chip, ts);
	if (error) {
		FUNC4(&client->dev,
			"failed to install chip disable handler\n");
		return error;
	}

	/* Named "INT" on the chip, DT binding is "touch" */
	ts->int_gpiod = FUNC9(&client->dev,
						"touch", GPIOD_IN);
	error = FUNC2(ts->int_gpiod);
	if (error) {
		if (error != -EPROBE_DEFER)
			FUNC4(&client->dev, "failed to get INT GPIO\n");
		return error;
	}

	if (ts->int_gpiod)
		FUNC14(ts->int_gpiod, "BU21013 INT");

	/* configure the touch panel controller */
	error = FUNC3(ts);
	if (error) {
		FUNC4(&client->dev, "error in bu21013 config\n");
		return error;
	}

	error = FUNC13(&client->dev, client->irq,
					  NULL, bu21013_gpio_irq,
					  IRQF_ONESHOT, DRIVER_TP, ts);
	if (error) {
		FUNC4(&client->dev, "request irq %d failed\n",
			client->irq);
		return error;
	}

	error = FUNC18(in_dev);
	if (error) {
		FUNC4(&client->dev, "failed to register input device\n");
		return error;
	}

	FUNC16(client, ts);

	return 0;
}