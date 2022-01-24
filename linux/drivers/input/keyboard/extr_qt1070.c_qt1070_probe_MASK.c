#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct qt1070_data {struct input_dev* input; int /*<<< orphan*/ * keycodes; scalar_t__ irq; struct i2c_client* client; } ;
struct TYPE_7__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_6__ {TYPE_5__* parent; } ;
struct input_dev {char* name; int keycodesize; int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/ * keycode; TYPE_2__ id; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {TYPE_3__* driver; } ;
struct i2c_client {scalar_t__ irq; TYPE_5__ dev; TYPE_4__* adapter; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  CALIBRATE_CMD ; 
 int /*<<< orphan*/  DET_STATUS ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_NONE ; 
 int /*<<< orphan*/  QT1070_CAL_TIME ; 
 int /*<<< orphan*/  QT1070_RESET_TIME ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct qt1070_data*) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct qt1070_data*) ; 
 struct input_dev* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct qt1070_data*) ; 
 struct qt1070_data* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*) ; 
 int /*<<< orphan*/  qt1070_interrupt ; 
 int /*<<< orphan*/ * qt1070_key2code ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct qt1070_data*) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct qt1070_data *data;
	struct input_dev *input;
	int i;
	int err;

	err = FUNC5(client->adapter, I2C_FUNC_SMBUS_BYTE);
	if (!err) {
		FUNC3(&client->dev, "%s adapter not supported\n",
			FUNC2(&client->adapter->dev));
		return -ENODEV;
	}

	if (!client->irq) {
		FUNC3(&client->dev, "please assign the irq to this device\n");
		return -EINVAL;
	}

	/* Identify the qt1070 chip */
	if (!FUNC13(client))
		return -ENODEV;

	data = FUNC11(sizeof(struct qt1070_data), GFP_KERNEL);
	input = FUNC7();
	if (!data || !input) {
		FUNC3(&client->dev, "insufficient memory\n");
		err = -ENOMEM;
		goto err_free_mem;
	}

	data->client = client;
	data->input = input;
	data->irq = client->irq;

	input->name = "AT42QT1070 QTouch Sensor";
	input->dev.parent = &client->dev;
	input->id.bustype = BUS_I2C;

	/* Add the keycode */
	input->keycode = data->keycodes;
	input->keycodesize = sizeof(data->keycodes[0]);
	input->keycodemax = FUNC0(qt1070_key2code);

	FUNC1(EV_KEY, input->evbit);

	for (i = 0; i < FUNC0(qt1070_key2code); i++) {
		data->keycodes[i] = qt1070_key2code[i];
		FUNC1(qt1070_key2code[i], input->keybit);
	}

	/* Calibrate device */
	FUNC15(client, CALIBRATE_CMD, 1);
	FUNC12(QT1070_CAL_TIME);

	/* Soft reset */
	FUNC15(client, RESET, 1);
	FUNC12(QT1070_RESET_TIME);

	err = FUNC16(client->irq, NULL, qt1070_interrupt,
				   IRQF_TRIGGER_NONE | IRQF_ONESHOT,
				   client->dev.driver->name, data);
	if (err) {
		FUNC3(&client->dev, "fail to request irq\n");
		goto err_free_mem;
	}

	/* Register the input device */
	err = FUNC9(data->input);
	if (err) {
		FUNC3(&client->dev, "Failed to register input device\n");
		goto err_free_irq;
	}

	FUNC6(client, data);

	/* Read to clear the chang line */
	FUNC14(client, DET_STATUS);

	return 0;

err_free_irq:
	FUNC4(client->irq, data);
err_free_mem:
	FUNC8(input);
	FUNC10(data);
	return err;
}