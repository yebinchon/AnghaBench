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
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {TYPE_2__ dev; int /*<<< orphan*/  (* close ) (struct input_dev*) ;int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct icn8318_data {struct input_dev* input; struct i2c_client* client; int /*<<< orphan*/  prop; int /*<<< orphan*/  wake_gpio; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  ICN8318_MAX_TOUCHES ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC4 (struct device*) ; 
 struct icn8318_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct icn8318_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct icn8318_data*) ; 
 int /*<<< orphan*/  icn8318_irq ; 
 int /*<<< orphan*/  icn8318_start ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,struct icn8318_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct icn8318_data *data;
	struct input_dev *input;
	int error;

	if (!client->irq) {
		FUNC2(dev, "Error no irq specified\n");
		return -EINVAL;
	}

	data = FUNC5(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->wake_gpio = FUNC3(dev, "wake", GPIOD_OUT_LOW);
	if (FUNC0(data->wake_gpio)) {
		error = FUNC1(data->wake_gpio);
		if (error != -EPROBE_DEFER)
			FUNC2(dev, "Error getting wake gpio: %d\n", error);
		return error;
	}

	input = FUNC4(dev);
	if (!input)
		return -ENOMEM;

	input->name = client->name;
	input->id.bustype = BUS_I2C;
	input->open = icn8318_start;
	input->close = icn8318_stop;
	input->dev.parent = dev;

	FUNC12(input, EV_ABS, ABS_MT_POSITION_X);
	FUNC12(input, EV_ABS, ABS_MT_POSITION_Y);

	FUNC14(input, true, &data->prop);
	if (!FUNC9(input, ABS_MT_POSITION_X) ||
	    !FUNC9(input, ABS_MT_POSITION_Y)) {
		FUNC2(dev, "Error touchscreen-size-x and/or -y missing\n");
		return -EINVAL;
	}

	error = FUNC10(input, ICN8318_MAX_TOUCHES,
				    INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
	if (error)
		return error;

	data->client = client;
	data->input = input;
	FUNC13(input, data);

	error = FUNC6(dev, client->irq, NULL, icn8318_irq,
					  IRQF_ONESHOT, client->name, data);
	if (error) {
		FUNC2(dev, "Error requesting irq: %d\n", error);
		return error;
	}

	/* Stop device till opened */
	FUNC8(data->input);

	error = FUNC11(input);
	if (error)
		return error;

	FUNC7(client, data);

	return 0;
}