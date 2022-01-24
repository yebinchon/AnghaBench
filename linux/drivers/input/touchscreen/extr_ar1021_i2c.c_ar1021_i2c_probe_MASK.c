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
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  propbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;
struct ar1021_i2c {struct input_dev* input; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  AR1021_MAX_X ; 
 int /*<<< orphan*/  AR1021_MAX_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar1021_i2c_close ; 
 int /*<<< orphan*/  ar1021_i2c_irq ; 
 int /*<<< orphan*/  ar1021_i2c_open ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 struct ar1021_i2c* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ar1021_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,struct ar1021_i2c*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct ar1021_i2c *ar1021;
	struct input_dev *input;
	int error;

	if (!FUNC6(client->adapter, I2C_FUNC_I2C)) {
		FUNC1(&client->dev, "i2c_check_functionality error\n");
		return -ENXIO;
	}

	ar1021 = FUNC3(&client->dev, sizeof(*ar1021), GFP_KERNEL);
	if (!ar1021)
		return -ENOMEM;

	input = FUNC2(&client->dev);
	if (!input)
		return -ENOMEM;

	ar1021->client = client;
	ar1021->input = input;

	input->name = "ar1021 I2C Touchscreen";
	input->id.bustype = BUS_I2C;
	input->dev.parent = &client->dev;
	input->open = ar1021_i2c_open;
	input->close = ar1021_i2c_close;

	FUNC0(INPUT_PROP_DIRECT, input->propbit);
	FUNC9(input, EV_KEY, BTN_TOUCH);
	FUNC8(input, ABS_X, 0, AR1021_MAX_X, 0, 0);
	FUNC8(input, ABS_Y, 0, AR1021_MAX_Y, 0, 0);

	FUNC10(input, ar1021);

	error = FUNC4(&client->dev, client->irq,
					  NULL, ar1021_i2c_irq,
					  IRQF_ONESHOT,
					  "ar1021_i2c", ar1021);
	if (error) {
		FUNC1(&client->dev,
			"Failed to enable IRQ, error: %d\n", error);
		return error;
	}

	/* Disable the IRQ, we'll enable it in ar1021_i2c_open() */
	FUNC5(client->irq);

	error = FUNC7(ar1021->input);
	if (error) {
		FUNC1(&client->dev,
			"Failed to register input device, error: %d\n", error);
		return error;
	}

	return 0;
}