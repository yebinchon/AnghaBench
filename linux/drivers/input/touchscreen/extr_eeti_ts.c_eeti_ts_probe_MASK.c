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
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; struct device dev; } ;
struct eeti_ts {int /*<<< orphan*/  attn_gpio; struct input_dev* input; struct i2c_client* client; int /*<<< orphan*/  props; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EETI_MAXVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC4 (struct device*) ; 
 struct eeti_ts* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eeti_ts*) ; 
 int /*<<< orphan*/  eeti_ts_close ; 
 int /*<<< orphan*/  eeti_ts_isr ; 
 int /*<<< orphan*/  eeti_ts_open ; 
 int /*<<< orphan*/  FUNC7 (struct eeti_ts*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct eeti_ts*) ; 
 int FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,struct eeti_ts*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *idp)
{
	struct device *dev = &client->dev;
	struct eeti_ts *eeti;
	struct input_dev *input;
	int error;

	/*
	 * In contrast to what's described in the datasheet, there seems
	 * to be no way of probing the presence of that device using I2C
	 * commands. So we need to blindly believe it is there, and wait
	 * for interrupts to occur.
	 */

	eeti = FUNC5(dev, sizeof(*eeti), GFP_KERNEL);
	if (!eeti) {
		FUNC2(dev, "failed to allocate driver data\n");
		return -ENOMEM;
	}

	FUNC13(&eeti->mutex);

	input = FUNC4(dev);
	if (!input) {
		FUNC2(dev, "Failed to allocate input device.\n");
		return -ENOMEM;
	}

	FUNC11(input, EV_KEY, BTN_TOUCH);

	FUNC10(input, ABS_X, 0, EETI_MAXVAL, 0, 0);
	FUNC10(input, ABS_Y, 0, EETI_MAXVAL, 0, 0);
	FUNC10(input, ABS_PRESSURE, 0, 0xff, 0, 0);

	FUNC14(input, false, &eeti->props);

	input->name = client->name;
	input->id.bustype = BUS_I2C;
	input->open = eeti_ts_open;
	input->close = eeti_ts_close;

	eeti->client = client;
	eeti->input = input;

	eeti->attn_gpio = FUNC3(dev, "attn", GPIOD_IN);
	if (FUNC0(eeti->attn_gpio))
		return FUNC1(eeti->attn_gpio);

	FUNC8(client, eeti);
	FUNC12(input, eeti);

	error = FUNC6(dev, client->irq,
					  NULL, eeti_ts_isr,
					  IRQF_ONESHOT,
					  client->name, eeti);
	if (error) {
		FUNC2(dev, "Unable to request touchscreen IRQ: %d\n",
			error);
		return error;
	}

	/*
	 * Disable the device for now. It will be enabled once the
	 * input device is opened.
	 */
	FUNC7(eeti);

	error = FUNC9(input);
	if (error)
		return error;

	return 0;
}