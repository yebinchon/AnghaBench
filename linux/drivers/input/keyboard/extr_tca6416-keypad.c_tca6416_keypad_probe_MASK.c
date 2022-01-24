#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tca6416_keys_platform_data {int nbuttons; scalar_t__ irq_is_gpio; TYPE_3__* buttons; scalar_t__ rep; int /*<<< orphan*/  use_polling; int /*<<< orphan*/  pinmask; } ;
struct tca6416_keypad_chip {int /*<<< orphan*/  irqnum; int /*<<< orphan*/  use_polling; TYPE_3__* buttons; int /*<<< orphan*/  dwork; int /*<<< orphan*/  pinmask; int /*<<< orphan*/  io_size; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_6__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char* phys; int /*<<< orphan*/  evbit; TYPE_2__ id; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; TYPE_4__* adapter; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int type; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 unsigned int EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buttons ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct tca6416_keys_platform_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct tca6416_keypad_chip*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct tca6416_keypad_chip*) ; 
 struct input_dev* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*) ; 
 int FUNC15 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,struct tca6416_keypad_chip*) ; 
 int /*<<< orphan*/  FUNC18 (struct tca6416_keypad_chip*) ; 
 struct tca6416_keypad_chip* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct tca6416_keypad_chip*) ; 
 int /*<<< orphan*/  FUNC21 (struct tca6416_keypad_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tca6416_keys_close ; 
 int /*<<< orphan*/  tca6416_keys_isr ; 
 int /*<<< orphan*/  tca6416_keys_open ; 
 int /*<<< orphan*/  tca6416_keys_work_func ; 
 int FUNC22 (struct tca6416_keypad_chip*) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
				   const struct i2c_device_id *id)
{
	struct tca6416_keys_platform_data *pdata;
	struct tca6416_keypad_chip *chip;
	struct input_dev *input;
	int error;
	int i;

	/* Check functionality */
	if (!FUNC11(client->adapter, I2C_FUNC_SMBUS_BYTE)) {
		FUNC4(&client->dev, "%s adapter not supported\n",
			FUNC3(&client->adapter->dev));
		return -ENODEV;
	}

	pdata = FUNC5(&client->dev);
	if (!pdata) {
		FUNC2(&client->dev, "no platform data\n");
		return -EINVAL;
	}

	chip = FUNC19(FUNC21(chip, buttons, pdata->nbuttons), GFP_KERNEL);
	input = FUNC13();
	if (!chip || !input) {
		error = -ENOMEM;
		goto fail1;
	}

	chip->client = client;
	chip->input = input;
	chip->io_size = id->driver_data;
	chip->pinmask = pdata->pinmask;
	chip->use_polling = pdata->use_polling;

	FUNC0(&chip->dwork, tca6416_keys_work_func);

	input->phys = "tca6416-keys/input0";
	input->name = client->name;
	input->dev.parent = &client->dev;

	input->open = tca6416_keys_open;
	input->close = tca6416_keys_close;

	input->id.bustype = BUS_HOST;
	input->id.vendor = 0x0001;
	input->id.product = 0x0001;
	input->id.version = 0x0100;

	/* Enable auto repeat feature of Linux input subsystem */
	if (pdata->rep)
		FUNC1(EV_REP, input->evbit);

	for (i = 0; i < pdata->nbuttons; i++) {
		unsigned int type;

		chip->buttons[i] = pdata->buttons[i];
		type = (pdata->buttons[i].type) ?: EV_KEY;
		FUNC16(input, type, pdata->buttons[i].code);
	}

	FUNC17(input, chip);

	/*
	 * Initialize cached registers from their original values.
	 * we can't share this chip with another i2c master.
	 */
	error = FUNC22(chip);
	if (error)
		goto fail1;

	if (!chip->use_polling) {
		if (pdata->irq_is_gpio)
			chip->irqnum = FUNC10(client->irq);
		else
			chip->irqnum = client->irq;

		error = FUNC20(chip->irqnum, NULL,
					     tca6416_keys_isr,
					     IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
					     "tca6416-keypad", chip);
		if (error) {
			FUNC2(&client->dev,
				"Unable to claim irq %d; error %d\n",
				chip->irqnum, error);
			goto fail1;
		}
		FUNC7(chip->irqnum);
	}

	error = FUNC15(input);
	if (error) {
		FUNC2(&client->dev,
			"Unable to register input device, error: %d\n", error);
		goto fail2;
	}

	FUNC12(client, chip);
	FUNC6(&client->dev, 1);

	return 0;

fail2:
	if (!chip->use_polling) {
		FUNC9(chip->irqnum, chip);
		FUNC8(chip->irqnum);
	}
fail1:
	FUNC14(input);
	FUNC18(chip);
	return error;
}