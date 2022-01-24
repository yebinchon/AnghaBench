#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct TYPE_11__ {int vendor; int product; unsigned int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_10__ {TYPE_5__* parent; } ;
struct input_dev {char* phys; int keycodesize; int keycodemax; scalar_t__* keycode; int /*<<< orphan*/  swbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  keybit; TYPE_3__ id; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_13__ {TYPE_1__* driver; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_5__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; } ;
struct adp5588_kpad_platform_data {unsigned short rows; unsigned short cols; int keymapsize; int gpimapsize; scalar_t__ repeat; TYPE_4__* gpimap; int /*<<< orphan*/  keymap; } ;
struct adp5588_kpad {scalar_t__* keycode; int gpimapsize; int /*<<< orphan*/  work; TYPE_4__* gpimap; int /*<<< orphan*/  delay; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_12__ {unsigned short pin; scalar_t__ sw_evt; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int ADP5588_DEVICE_ID_MASK ; 
 int ADP5588_GPIMAPSIZE_MAX ; 
 int ADP5588_KEYMAPSIZE ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  DEV_ID ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ EV_KEY ; 
 scalar_t__ EV_REP ; 
 scalar_t__ EV_SW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned short GPI_PIN_BASE ; 
 unsigned short GPI_PIN_COL_BASE ; 
 unsigned short GPI_PIN_END ; 
 unsigned short GPI_PIN_ROW_BASE ; 
 unsigned short GPI_PIN_ROW_END ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 scalar_t__ KEY_MAX ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adp5588_kpad*) ; 
 int /*<<< orphan*/  adp5588_irq ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adp5588_kpad*) ; 
 int FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  adp5588_work ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*,...) ; 
 struct adp5588_kpad_platform_data* FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct adp5588_kpad*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct adp5588_kpad*) ; 
 struct input_dev* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*) ; 
 int FUNC18 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct input_dev*,struct adp5588_kpad*) ; 
 int /*<<< orphan*/  FUNC20 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct adp5588_kpad*) ; 
 struct adp5588_kpad* FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adp5588_kpad*) ; 

__attribute__((used)) static int FUNC26(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adp5588_kpad *kpad;
	const struct adp5588_kpad_platform_data *pdata =
			FUNC10(&client->dev);
	struct input_dev *input;
	unsigned int revid;
	int ret, i;
	int error;

	if (!FUNC14(client->adapter,
					I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC9(&client->dev, "SMBUS Byte Data not Supported\n");
		return -EIO;
	}

	if (!pdata) {
		FUNC9(&client->dev, "no platform data?\n");
		return -EINVAL;
	}

	if (!pdata->rows || !pdata->cols || !pdata->keymap) {
		FUNC9(&client->dev, "no rows, cols or keymap from pdata\n");
		return -EINVAL;
	}

	if (pdata->keymapsize != ADP5588_KEYMAPSIZE) {
		FUNC9(&client->dev, "invalid keymapsize\n");
		return -EINVAL;
	}

	if (!pdata->gpimap && pdata->gpimapsize) {
		FUNC9(&client->dev, "invalid gpimap from pdata\n");
		return -EINVAL;
	}

	if (pdata->gpimapsize > ADP5588_GPIMAPSIZE_MAX) {
		FUNC9(&client->dev, "invalid gpimapsize\n");
		return -EINVAL;
	}

	for (i = 0; i < pdata->gpimapsize; i++) {
		unsigned short pin = pdata->gpimap[i].pin;

		if (pin < GPI_PIN_BASE || pin > GPI_PIN_END) {
			FUNC9(&client->dev, "invalid gpi pin data\n");
			return -EINVAL;
		}

		if (pin <= GPI_PIN_ROW_END) {
			if (pin - GPI_PIN_ROW_BASE + 1 <= pdata->rows) {
				FUNC9(&client->dev, "invalid gpi row data\n");
				return -EINVAL;
			}
		} else {
			if (pin - GPI_PIN_COL_BASE + 1 <= pdata->cols) {
				FUNC9(&client->dev, "invalid gpi col data\n");
				return -EINVAL;
			}
		}
	}

	if (!client->irq) {
		FUNC9(&client->dev, "no IRQ?\n");
		return -EINVAL;
	}

	kpad = FUNC22(sizeof(*kpad), GFP_KERNEL);
	input = FUNC16();
	if (!kpad || !input) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	kpad->client = client;
	kpad->input = input;
	FUNC0(&kpad->work, adp5588_work);

	ret = FUNC5(client, DEV_ID);
	if (ret < 0) {
		error = ret;
		goto err_free_mem;
	}

	revid = (u8) ret & ADP5588_DEVICE_ID_MASK;
	if (FUNC1(revid))
		kpad->delay = FUNC24(30);

	input->name = client->name;
	input->phys = "adp5588-keys/input0";
	input->dev.parent = &client->dev;

	FUNC19(input, kpad);

	input->id.bustype = BUS_I2C;
	input->id.vendor = 0x0001;
	input->id.product = 0x0001;
	input->id.version = revid;

	input->keycodesize = sizeof(kpad->keycode[0]);
	input->keycodemax = pdata->keymapsize;
	input->keycode = kpad->keycode;

	FUNC23(kpad->keycode, pdata->keymap,
		pdata->keymapsize * input->keycodesize);

	kpad->gpimap = pdata->gpimap;
	kpad->gpimapsize = pdata->gpimapsize;

	/* setup input device */
	FUNC3(EV_KEY, input->evbit);

	if (pdata->repeat)
		FUNC3(EV_REP, input->evbit);

	for (i = 0; i < input->keycodemax; i++)
		if (kpad->keycode[i] <= KEY_MAX)
			FUNC3(kpad->keycode[i], input->keybit);
	FUNC2(KEY_RESERVED, input->keybit);

	if (kpad->gpimapsize)
		FUNC3(EV_SW, input->evbit);
	for (i = 0; i < kpad->gpimapsize; i++)
		FUNC3(kpad->gpimap[i].sw_evt, input->swbit);

	error = FUNC18(input);
	if (error) {
		FUNC9(&client->dev, "unable to register input device\n");
		goto err_free_mem;
	}

	error = FUNC25(client->irq, adp5588_irq,
			    IRQF_TRIGGER_FALLING,
			    client->dev.driver->name, kpad);
	if (error) {
		FUNC9(&client->dev, "irq %d busy?\n", client->irq);
		goto err_unreg_dev;
	}

	error = FUNC7(client);
	if (error)
		goto err_free_irq;

	if (kpad->gpimapsize)
		FUNC6(kpad);

	error = FUNC4(kpad);
	if (error)
		goto err_free_irq;

	FUNC12(&client->dev, 1);
	FUNC15(client, kpad);

	FUNC11(&client->dev, "Rev.%d keypad, irq %d\n", revid, client->irq);
	return 0;

 err_free_irq:
	FUNC13(client->irq, kpad);
	FUNC8(&kpad->work);
 err_unreg_dev:
	FUNC20(input);
	input = NULL;
 err_free_mem:
	FUNC17(input);
	FUNC21(kpad);

	return error;
}