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
struct input_dev {TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct icn8505_data {int /*<<< orphan*/  prop; struct input_dev* input; struct i2c_client* client; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; struct device dev; } ;
typedef  int /*<<< orphan*/  resolution ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICN8505_MAX_TOUCHES ; 
 int /*<<< orphan*/  ICN8505_REG_CONFIGDATA ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_LEFTMETA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct input_dev* FUNC1 (struct device*) ; 
 struct icn8505_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct icn8505_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct icn8505_data*) ; 
 int /*<<< orphan*/  icn8505_irq ; 
 int FUNC5 (struct icn8505_data*,struct device*) ; 
 int FUNC6 (struct icn8505_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct icn8505_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,struct icn8505_data*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct input_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct icn8505_data *icn8505;
	struct input_dev *input;
	__le16 resolution[2];
	int error;

	if (!client->irq) {
		FUNC0(dev, "No irq specified\n");
		return -EINVAL;
	}

	icn8505 = FUNC2(dev, sizeof(*icn8505), GFP_KERNEL);
	if (!icn8505)
		return -ENOMEM;

	input = FUNC1(dev);
	if (!input)
		return -ENOMEM;

	input->name = client->name;
	input->id.bustype = BUS_I2C;

	FUNC12(input, EV_ABS, ABS_MT_POSITION_X);
	FUNC12(input, EV_ABS, ABS_MT_POSITION_Y);
	FUNC12(input, EV_KEY, KEY_LEFTMETA);

	icn8505->client = client;
	icn8505->input = input;
	FUNC13(input, icn8505);

	error = FUNC5(icn8505, dev);
	if (error)
		return error;

	error = FUNC7(icn8505);
	if (error)
		return error;

	error = FUNC6(icn8505, ICN8505_REG_CONFIGDATA,
				resolution, sizeof(resolution));
	if (error) {
		FUNC0(dev, "Error reading resolution: %d\n", error);
		return error;
	}

	FUNC11(input, ABS_MT_POSITION_X, 0,
			     FUNC14(resolution[0]) - 1, 0, 0);
	FUNC11(input, ABS_MT_POSITION_Y, 0,
			     FUNC14(resolution[1]) - 1, 0, 0);

	FUNC15(input, true, &icn8505->prop);
	if (!FUNC8(input, ABS_MT_POSITION_X) ||
	    !FUNC8(input, ABS_MT_POSITION_Y)) {
		FUNC0(dev, "Error touchscreen-size-x and/or -y missing\n");
		return -EINVAL;
	}

	error = FUNC9(input, ICN8505_MAX_TOUCHES,
				  INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
	if (error)
		return error;

	error = FUNC3(dev, client->irq, NULL, icn8505_irq,
					IRQF_ONESHOT, client->name, icn8505);
	if (error) {
		FUNC0(dev, "Error requesting irq: %d\n", error);
		return error;
	}

	error = FUNC10(input);
	if (error)
		return error;

	FUNC4(client, icn8505);
	return 0;
}