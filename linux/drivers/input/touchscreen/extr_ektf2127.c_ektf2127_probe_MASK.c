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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  (* close ) (struct input_dev*) ;int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; struct device dev; } ;
struct ektf2127_ts {struct input_dev* input; int /*<<< orphan*/  prop; struct i2c_client* client; int /*<<< orphan*/  power_gpios; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int /*<<< orphan*/  EKTF2127_MAX_TOUCHES ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_TRACK ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC4 (struct device*) ; 
 struct ektf2127_ts* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ektf2127_ts*) ; 
 int /*<<< orphan*/  ektf2127_irq ; 
 int FUNC7 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  ektf2127_start ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct ektf2127_ts*) ; 
 int FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,struct ektf2127_ts*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct ektf2127_ts *ts;
	struct input_dev *input;
	u8 buf[4];
	int max_x, max_y;
	int error;

	if (!client->irq) {
		FUNC2(dev, "Error no irq specified\n");
		return -EINVAL;
	}

	ts = FUNC5(dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	/* This requests the gpio *and* turns on the touchscreen controller */
	ts->power_gpios = FUNC3(dev, "power", GPIOD_OUT_HIGH);
	if (FUNC0(ts->power_gpios)) {
		error = FUNC1(ts->power_gpios);
		if (error != -EPROBE_DEFER)
			FUNC2(dev, "Error getting power gpio: %d\n", error);
		return error;
	}

	input = FUNC4(dev);
	if (!input)
		return -ENOMEM;

	input->name = client->name;
	input->id.bustype = BUS_I2C;
	input->open = ektf2127_start;
	input->close = ektf2127_stop;

	ts->client = client;

	/* Read hello (ignore result, depends on initial power state) */
	FUNC15(20);
	FUNC9(ts->client, buf, sizeof(buf));

	/* Read resolution from chip */
	max_x = FUNC7(client, true);
	if (max_x < 0)
		return max_x;

	max_y = FUNC7(client, false);
	if (max_y < 0)
		return max_y;

	FUNC13(input, ABS_MT_POSITION_X, 0, max_x, 0, 0);
	FUNC13(input, ABS_MT_POSITION_Y, 0, max_y, 0, 0);
	FUNC16(input, true, &ts->prop);

	error = FUNC11(input, EKTF2127_MAX_TOUCHES,
				    INPUT_MT_DIRECT |
					INPUT_MT_DROP_UNUSED |
					INPUT_MT_TRACK);
	if (error)
		return error;

	ts->input = input;
	FUNC14(input, ts);

	error = FUNC6(dev, client->irq,
					  NULL, ektf2127_irq,
					  IRQF_ONESHOT, client->name, ts);
	if (error) {
		FUNC2(dev, "Error requesting irq: %d\n", error);
		return error;
	}

	/* Stop device till opened */
	FUNC8(ts->input);

	error = FUNC12(input);
	if (error)
		return error;

	FUNC10(client, ts);

	return 0;
}