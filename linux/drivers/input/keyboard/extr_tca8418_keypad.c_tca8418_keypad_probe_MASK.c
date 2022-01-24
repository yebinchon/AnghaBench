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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct tca8418_keypad {int row_shift; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_3__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  evbit; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; TYPE_2__* adapter; struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  REG_KEY_LCK_EC ; 
 scalar_t__ TCA8418_MAX_COLS ; 
 scalar_t__ TCA8418_MAX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 scalar_t__ FUNC3 (struct device*,char*) ; 
 struct input_dev* FUNC4 (struct device*) ; 
 struct tca8418_keypad* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct tca8418_keypad*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,struct input_dev*) ; 
 int FUNC12 (struct device*,scalar_t__*,scalar_t__*) ; 
 int FUNC13 (struct tca8418_keypad*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  tca8418_irq_handler ; 
 int FUNC14 (struct tca8418_keypad*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct tca8418_keypad *keypad_data;
	struct input_dev *input;
	u32 rows = 0, cols = 0;
	int error, row_shift;
	u8 reg;

	/* Check i2c driver capabilities */
	if (!FUNC8(client->adapter, I2C_FUNC_SMBUS_BYTE)) {
		FUNC2(dev, "%s adapter not supported\n",
			FUNC1(&client->adapter->dev));
		return -ENODEV;
	}

	error = FUNC12(dev, &rows, &cols);
	if (error)
		return error;

	if (!rows || rows > TCA8418_MAX_ROWS) {
		FUNC2(dev, "invalid rows\n");
		return -EINVAL;
	}

	if (!cols || cols > TCA8418_MAX_COLS) {
		FUNC2(dev, "invalid columns\n");
		return -EINVAL;
	}

	row_shift = FUNC7(cols);

	/* Allocate memory for keypad_data and input device */
	keypad_data = FUNC5(dev, sizeof(*keypad_data), GFP_KERNEL);
	if (!keypad_data)
		return -ENOMEM;

	keypad_data->client = client;
	keypad_data->row_shift = row_shift;

	/* Read key lock register, if this fails assume device not present */
	error = FUNC14(keypad_data, REG_KEY_LCK_EC, &reg);
	if (error)
		return -ENODEV;

	/* Configure input device */
	input = FUNC4(dev);
	if (!input)
		return -ENOMEM;

	keypad_data->input = input;

	input->name = client->name;
	input->id.bustype = BUS_I2C;
	input->id.vendor  = 0x0001;
	input->id.product = 0x001;
	input->id.version = 0x0001;

	error = FUNC11(NULL, NULL, rows, cols, NULL, input);
	if (error) {
		FUNC2(dev, "Failed to build keymap\n");
		return error;
	}

	if (FUNC3(dev, "keypad,autorepeat"))
		FUNC0(EV_REP, input->evbit);

	FUNC10(input, EV_MSC, MSC_SCAN);

	error = FUNC6(dev, client->irq,
					  NULL, tca8418_irq_handler,
					  IRQF_SHARED | IRQF_ONESHOT,
					  client->name, keypad_data);
	if (error) {
		FUNC2(dev, "Unable to claim irq %d; error %d\n",
			client->irq, error);
		return error;
	}

	/* Initialize the chip */
	error = FUNC13(keypad_data, rows, cols);
	if (error < 0)
		return error;

	error = FUNC9(input);
	if (error) {
		FUNC2(dev, "Unable to register input device, error: %d\n",
			error);
		return error;
	}

	return 0;
}