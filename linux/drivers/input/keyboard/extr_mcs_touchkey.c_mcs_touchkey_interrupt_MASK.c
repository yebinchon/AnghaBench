#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mcs_touchkey_chip {int pressbit; int press_invert; scalar_t__ baseval; int /*<<< orphan*/  status_reg; } ;
struct mcs_touchkey_data {unsigned int key_val; int /*<<< orphan*/  key_code; int /*<<< orphan*/ * keycodes; struct input_dev* input_dev; struct i2c_client* client; struct mcs_touchkey_chip chip; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct mcs_touchkey_data *data = dev_id;
	struct mcs_touchkey_chip *chip = &data->chip;
	struct i2c_client *client = data->client;
	struct input_dev *input = data->input_dev;
	unsigned int key_val;
	unsigned int pressed;
	int val;

	val = FUNC2(client, chip->status_reg);
	if (val < 0) {
		FUNC1(&client->dev, "i2c read error [%d]\n", val);
		goto out;
	}

	pressed = (val & (1 << chip->pressbit)) >> chip->pressbit;
	if (chip->press_invert)
		pressed ^= chip->press_invert;

	/* key_val is 0 when released, so we should use key_val of press. */
	if (pressed) {
		key_val = val & (0xff >> (8 - chip->pressbit));
		if (!key_val)
			goto out;
		key_val -= chip->baseval;
		data->key_code = data->keycodes[key_val];
		data->key_val = key_val;
	}

	FUNC3(input, EV_MSC, MSC_SCAN, data->key_val);
	FUNC4(input, data->key_code, pressed);
	FUNC5(input);

	FUNC0(&client->dev, "key %d %d %s\n", data->key_val, data->key_code,
		pressed ? "pressed" : "released");

 out:
	return IRQ_HANDLED;
}