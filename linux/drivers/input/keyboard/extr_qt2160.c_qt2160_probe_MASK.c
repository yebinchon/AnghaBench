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
struct qt2160_data {struct input_dev* input; int /*<<< orphan*/ * keycodes; int /*<<< orphan*/  dwork; struct i2c_client* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int keycodesize; int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/ * keycode; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; TYPE_2__* adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  QT2160_CMD_CALIBRATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct qt2160_data*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct qt2160_data*) ; 
 struct input_dev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct qt2160_data*) ; 
 struct qt2160_data* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*) ; 
 int /*<<< orphan*/  qt2160_irq ; 
 int /*<<< orphan*/ * qt2160_key2code ; 
 int FUNC15 (struct qt2160_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct qt2160_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct qt2160_data*) ; 
 int /*<<< orphan*/  qt2160_worker ; 
 int FUNC18 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct qt2160_data*) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct qt2160_data *qt2160;
	struct input_dev *input;
	int i;
	int error;

	/* Check functionality */
	error = FUNC7(client->adapter,
			I2C_FUNC_SMBUS_BYTE);
	if (!error) {
		FUNC5(&client->dev, "%s adapter not supported\n",
				FUNC4(&client->adapter->dev));
		return -ENODEV;
	}

	if (!FUNC14(client))
		return -ENODEV;

	/* Chip is valid and active. Allocate structure */
	qt2160 = FUNC13(sizeof(struct qt2160_data), GFP_KERNEL);
	input = FUNC9();
	if (!qt2160 || !input) {
		FUNC5(&client->dev, "insufficient memory\n");
		error = -ENOMEM;
		goto err_free_mem;
	}

	qt2160->client = client;
	qt2160->input = input;
	FUNC1(&qt2160->dwork, qt2160_worker);

	input->name = "AT42QT2160 Touch Sense Keyboard";
	input->id.bustype = BUS_I2C;

	input->keycode = qt2160->keycodes;
	input->keycodesize = sizeof(qt2160->keycodes[0]);
	input->keycodemax = FUNC0(qt2160_key2code);

	FUNC3(EV_KEY, input->evbit);
	FUNC2(EV_REP, input->evbit);
	for (i = 0; i < FUNC0(qt2160_key2code); i++) {
		qt2160->keycodes[i] = qt2160_key2code[i];
		FUNC3(qt2160_key2code[i], input->keybit);
	}
	FUNC2(KEY_RESERVED, input->keybit);

	/* Calibrate device */
	error = FUNC18(client, QT2160_CMD_CALIBRATE, 1);
	if (error) {
		FUNC5(&client->dev, "failed to calibrate device\n");
		goto err_free_mem;
	}

	if (client->irq) {
		error = FUNC19(client->irq, qt2160_irq,
				    IRQF_TRIGGER_FALLING, "qt2160", qt2160);
		if (error) {
			FUNC5(&client->dev,
				"failed to allocate irq %d\n", client->irq);
			goto err_free_mem;
		}
	}

	error = FUNC15(qt2160);
	if (error) {
		FUNC5(&client->dev, "Failed to register leds\n");
		goto err_free_irq;
	}

	error = FUNC11(qt2160->input);
	if (error) {
		FUNC5(&client->dev,
			"Failed to register input device\n");
		goto err_unregister_leds;
	}

	FUNC8(client, qt2160);
	FUNC16(qt2160);

	return 0;

err_unregister_leds:
	FUNC17(qt2160);
err_free_irq:
	if (client->irq)
		FUNC6(client->irq, qt2160);
err_free_mem:
	FUNC10(input);
	FUNC12(qt2160);
	return error;
}