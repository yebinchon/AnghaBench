#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct TYPE_14__ {int vendor; int product; unsigned int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_13__ {TYPE_5__* parent; } ;
struct input_dev {char* phys; int keycodesize; int keycodemax; scalar_t__* keycode; int /*<<< orphan*/  swbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; TYPE_4__ id; TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_15__ {TYPE_1__* driver; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_5__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; } ;
struct adp5589_kpad_platform_data {int keypad_en_mask; int keymapsize; int gpimapsize; scalar_t__ repeat; TYPE_2__* gpimap; int /*<<< orphan*/  keymap; } ;
struct adp5589_kpad {int support_row5; int is_adp5585; scalar_t__* keycode; int gpimapsize; TYPE_2__* gpimap; struct input_dev* input; struct i2c_client* client; TYPE_9__* var; } ;
struct TYPE_16__ {int row_mask; int col_shift; int keymapsize; int gpimapsize_max; unsigned short gpi_pin_base; unsigned short gpi_pin_end; unsigned short gpi_pin_row_base; } ;
struct TYPE_12__ {unsigned short pin; scalar_t__ sw_evt; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  ADP5585_01 130 
#define  ADP5585_02 129 
#define  ADP5589 128 
 unsigned int ADP5589_5_DEVICE_ID_MASK ; 
 int /*<<< orphan*/  ADP5589_5_ID ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ EV_KEY ; 
 scalar_t__ EV_REP ; 
 scalar_t__ EV_SW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ KEY_MAX ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adp5589_kpad*) ; 
 int /*<<< orphan*/  adp5589_irq ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adp5589_kpad*) ; 
 int FUNC5 (struct adp5589_kpad*) ; 
 TYPE_9__ const_adp5585 ; 
 TYPE_9__ const_adp5589 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,...) ; 
 struct adp5589_kpad_platform_data* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct adp5589_kpad*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct adp5589_kpad*) ; 
 struct input_dev* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*) ; 
 int FUNC15 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,struct adp5589_kpad*) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct adp5589_kpad*) ; 
 struct adp5589_kpad* FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct adp5589_kpad*) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adp5589_kpad *kpad;
	const struct adp5589_kpad_platform_data *pdata =
		FUNC7(&client->dev);
	struct input_dev *input;
	unsigned int revid;
	int ret, i;
	int error;

	if (!FUNC11(client->adapter,
				     I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC6(&client->dev, "SMBUS Byte Data not Supported\n");
		return -EIO;
	}

	if (!pdata) {
		FUNC6(&client->dev, "no platform data?\n");
		return -EINVAL;
	}

	kpad = FUNC19(sizeof(*kpad), GFP_KERNEL);
	if (!kpad)
		return -ENOMEM;

	switch (id->driver_data) {
	case ADP5585_02:
		kpad->support_row5 = true;
		/* fall through */
	case ADP5585_01:
		kpad->is_adp5585 = true;
		kpad->var = &const_adp5585;
		break;
	case ADP5589:
		kpad->support_row5 = true;
		kpad->var = &const_adp5589;
		break;
	}

	if (!((pdata->keypad_en_mask & kpad->var->row_mask) &&
			(pdata->keypad_en_mask >> kpad->var->col_shift)) ||
			!pdata->keymap) {
		FUNC6(&client->dev, "no rows, cols or keymap from pdata\n");
		error = -EINVAL;
		goto err_free_mem;
	}

	if (pdata->keymapsize != kpad->var->keymapsize) {
		FUNC6(&client->dev, "invalid keymapsize\n");
		error = -EINVAL;
		goto err_free_mem;
	}

	if (!pdata->gpimap && pdata->gpimapsize) {
		FUNC6(&client->dev, "invalid gpimap from pdata\n");
		error = -EINVAL;
		goto err_free_mem;
	}

	if (pdata->gpimapsize > kpad->var->gpimapsize_max) {
		FUNC6(&client->dev, "invalid gpimapsize\n");
		error = -EINVAL;
		goto err_free_mem;
	}

	for (i = 0; i < pdata->gpimapsize; i++) {
		unsigned short pin = pdata->gpimap[i].pin;

		if (pin < kpad->var->gpi_pin_base ||
				pin > kpad->var->gpi_pin_end) {
			FUNC6(&client->dev, "invalid gpi pin data\n");
			error = -EINVAL;
			goto err_free_mem;
		}

		if ((1 << (pin - kpad->var->gpi_pin_row_base)) &
				pdata->keypad_en_mask) {
			FUNC6(&client->dev, "invalid gpi row/col data\n");
			error = -EINVAL;
			goto err_free_mem;
		}
	}

	if (!client->irq) {
		FUNC6(&client->dev, "no IRQ?\n");
		error = -EINVAL;
		goto err_free_mem;
	}

	input = FUNC13();
	if (!input) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	kpad->client = client;
	kpad->input = input;

	ret = FUNC3(client, ADP5589_5_ID);
	if (ret < 0) {
		error = ret;
		goto err_free_input;
	}

	revid = (u8) ret & ADP5589_5_DEVICE_ID_MASK;

	input->name = client->name;
	input->phys = "adp5589-keys/input0";
	input->dev.parent = &client->dev;

	FUNC16(input, kpad);

	input->id.bustype = BUS_I2C;
	input->id.vendor = 0x0001;
	input->id.product = 0x0001;
	input->id.version = revid;

	input->keycodesize = sizeof(kpad->keycode[0]);
	input->keycodemax = pdata->keymapsize;
	input->keycode = kpad->keycode;

	FUNC20(kpad->keycode, pdata->keymap,
	       pdata->keymapsize * input->keycodesize);

	kpad->gpimap = pdata->gpimap;
	kpad->gpimapsize = pdata->gpimapsize;

	/* setup input device */
	FUNC1(EV_KEY, input->evbit);

	if (pdata->repeat)
		FUNC1(EV_REP, input->evbit);

	for (i = 0; i < input->keycodemax; i++)
		if (kpad->keycode[i] <= KEY_MAX)
			FUNC1(kpad->keycode[i], input->keybit);
	FUNC0(KEY_RESERVED, input->keybit);

	if (kpad->gpimapsize)
		FUNC1(EV_SW, input->evbit);
	for (i = 0; i < kpad->gpimapsize; i++)
		FUNC1(kpad->gpimap[i].sw_evt, input->swbit);

	error = FUNC15(input);
	if (error) {
		FUNC6(&client->dev, "unable to register input device\n");
		goto err_free_input;
	}

	error = FUNC21(client->irq, NULL, adp5589_irq,
				     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				     client->dev.driver->name, kpad);
	if (error) {
		FUNC6(&client->dev, "irq %d busy?\n", client->irq);
		goto err_unreg_dev;
	}

	error = FUNC5(kpad);
	if (error)
		goto err_free_irq;

	if (kpad->gpimapsize)
		FUNC4(kpad);

	error = FUNC2(kpad);
	if (error)
		goto err_free_irq;

	FUNC9(&client->dev, 1);
	FUNC12(client, kpad);

	FUNC8(&client->dev, "Rev.%d keypad, irq %d\n", revid, client->irq);
	return 0;

err_free_irq:
	FUNC10(client->irq, kpad);
err_unreg_dev:
	FUNC17(input);
	input = NULL;
err_free_input:
	FUNC14(input);
err_free_mem:
	FUNC18(kpad);

	return error;
}