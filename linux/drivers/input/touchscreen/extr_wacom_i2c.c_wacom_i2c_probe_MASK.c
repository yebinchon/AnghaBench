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
struct wacom_i2c {struct input_dev* input; struct i2c_client* client; } ;
struct wacom_features {int /*<<< orphan*/  pressure_max; int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int vendor; int /*<<< orphan*/  version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int* evbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wacom_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct wacom_i2c*) ; 
 struct input_dev* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,struct wacom_i2c*) ; 
 int /*<<< orphan*/  FUNC12 (struct wacom_i2c*) ; 
 struct wacom_i2c* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct wacom_i2c*) ; 
 int /*<<< orphan*/  wacom_i2c_close ; 
 int /*<<< orphan*/  wacom_i2c_irq ; 
 int /*<<< orphan*/  wacom_i2c_open ; 
 int FUNC15 (struct i2c_client*,struct wacom_features*) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
				     const struct i2c_device_id *id)
{
	struct wacom_i2c *wac_i2c;
	struct input_dev *input;
	struct wacom_features features = { 0 };
	int error;

	if (!FUNC5(client->adapter, I2C_FUNC_I2C)) {
		FUNC2(&client->dev, "i2c_check_functionality error\n");
		return -EIO;
	}

	error = FUNC15(client, &features);
	if (error)
		return error;

	wac_i2c = FUNC13(sizeof(*wac_i2c), GFP_KERNEL);
	input = FUNC7();
	if (!wac_i2c || !input) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	wac_i2c->client = client;
	wac_i2c->input = input;

	input->name = "Wacom I2C Digitizer";
	input->id.bustype = BUS_I2C;
	input->id.vendor = 0x56a;
	input->id.version = features.fw_version;
	input->dev.parent = &client->dev;
	input->open = wacom_i2c_open;
	input->close = wacom_i2c_close;

	input->evbit[0] |= FUNC0(EV_KEY) | FUNC0(EV_ABS);

	FUNC1(BTN_TOOL_PEN, input->keybit);
	FUNC1(BTN_TOOL_RUBBER, input->keybit);
	FUNC1(BTN_STYLUS, input->keybit);
	FUNC1(BTN_STYLUS2, input->keybit);
	FUNC1(BTN_TOUCH, input->keybit);

	FUNC10(input, ABS_X, 0, features.x_max, 0, 0);
	FUNC10(input, ABS_Y, 0, features.y_max, 0, 0);
	FUNC10(input, ABS_PRESSURE,
			     0, features.pressure_max, 0, 0);

	FUNC11(input, wac_i2c);

	error = FUNC14(client->irq, NULL, wacom_i2c_irq,
				     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				     "wacom_i2c", wac_i2c);
	if (error) {
		FUNC2(&client->dev,
			"Failed to enable IRQ, error: %d\n", error);
		goto err_free_mem;
	}

	/* Disable the IRQ, we'll enable it in wac_i2c_open() */
	FUNC3(client->irq);

	error = FUNC9(wac_i2c->input);
	if (error) {
		FUNC2(&client->dev,
			"Failed to register input device, error: %d\n", error);
		goto err_free_irq;
	}

	FUNC6(client, wac_i2c);
	return 0;

err_free_irq:
	FUNC4(client->irq, wac_i2c);
err_free_mem:
	FUNC8(input);
	FUNC12(wac_i2c);

	return error;
}