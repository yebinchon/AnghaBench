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
struct TYPE_2__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;
struct bu21029_ts_data {int /*<<< orphan*/  prop; int /*<<< orphan*/  timer; struct input_dev* in_dev; struct i2c_client* client; int /*<<< orphan*/  reset_gpios; int /*<<< orphan*/  vdd; int /*<<< orphan*/  x_plate_ohms; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EIO ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_12BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bu21029_start_chip ; 
 int /*<<< orphan*/  bu21029_stop_chip ; 
 int /*<<< orphan*/  bu21029_touch_release ; 
 int /*<<< orphan*/  bu21029_touch_soft_irq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC5 (int /*<<< orphan*/ *) ; 
 struct bu21029_ts_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bu21029_ts_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct bu21029_ts_data*) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,struct bu21029_ts_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct bu21029_ts_data *bu21029;
	struct input_dev *in_dev;
	int error;

	if (!FUNC9(client->adapter,
				     I2C_FUNC_SMBUS_WRITE_BYTE |
				     I2C_FUNC_SMBUS_WRITE_BYTE_DATA |
				     I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
		FUNC2(&client->dev,
			"i2c functionality support is not sufficient\n");
		return -EIO;
	}

	bu21029 = FUNC6(&client->dev, sizeof(*bu21029), GFP_KERNEL);
	if (!bu21029)
		return -ENOMEM;

	error = FUNC3(&client->dev, "rohm,x-plate-ohms",
					 &bu21029->x_plate_ohms);
	if (error) {
		FUNC2(&client->dev,
			"invalid 'x-plate-ohms' supplied: %d\n", error);
		return error;
	}

	bu21029->vdd = FUNC7(&client->dev, "vdd");
	if (FUNC0(bu21029->vdd)) {
		error = FUNC1(bu21029->vdd);
		if (error != -EPROBE_DEFER)
			FUNC2(&client->dev,
				"failed to acquire 'vdd' supply: %d\n", error);
		return error;
	}

	bu21029->reset_gpios = FUNC4(&client->dev,
						       "reset", GPIOD_OUT_HIGH);
	if (FUNC0(bu21029->reset_gpios)) {
		error = FUNC1(bu21029->reset_gpios);
		if (error != -EPROBE_DEFER)
			FUNC2(&client->dev,
				"failed to acquire 'reset' gpio: %d\n", error);
		return error;
	}

	in_dev = FUNC5(&client->dev);
	if (!in_dev) {
		FUNC2(&client->dev, "unable to allocate input device\n");
		return -ENOMEM;
	}

	bu21029->client = client;
	bu21029->in_dev = in_dev;
	FUNC16(&bu21029->timer, bu21029_touch_release, 0);

	in_dev->name		= DRIVER_NAME;
	in_dev->id.bustype	= BUS_I2C;
	in_dev->open		= bu21029_start_chip;
	in_dev->close		= bu21029_stop_chip;

	FUNC13(in_dev, EV_KEY, BTN_TOUCH);
	FUNC12(in_dev, ABS_X, 0, MAX_12BIT, 0, 0);
	FUNC12(in_dev, ABS_Y, 0, MAX_12BIT, 0, 0);
	FUNC12(in_dev, ABS_PRESSURE, 0, MAX_12BIT, 0, 0);
	FUNC17(in_dev, false, &bu21029->prop);

	FUNC14(in_dev, bu21029);

	FUNC15(client->irq, IRQ_NOAUTOEN);
	error = FUNC8(&client->dev, client->irq,
					  NULL, bu21029_touch_soft_irq,
					  IRQF_ONESHOT, DRIVER_NAME, bu21029);
	if (error) {
		FUNC2(&client->dev,
			"unable to request touch irq: %d\n", error);
		return error;
	}

	error = FUNC11(in_dev);
	if (error) {
		FUNC2(&client->dev,
			"unable to register input device: %d\n", error);
		return error;
	}

	FUNC10(client, bu21029);

	return 0;
}