#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int max_x; int max_y; } ;
struct mms114_data {int type; struct input_dev* input_dev; void* io_reg; void* core_reg; void* contact_threshold; void* moving_threshold; TYPE_3__ props; struct i2c_client* client; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;
typedef  enum mms_type { ____Placeholder_mms_type } mms_type ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_PROTOCOL_MANGLING ; 
 int /*<<< orphan*/  INPUT_MT_DIRECT ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (void*) ; 
 int MMS114_MAX_AREA ; 
 int /*<<< orphan*/  MMS114_MAX_TOUCH ; 
 int FUNC1 (void*) ; 
 scalar_t__ TYPE_MMS114 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct mms114_data* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mms114_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct mms114_data*) ; 
 void* FUNC13 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct input_dev*,struct mms114_data*) ; 
 int /*<<< orphan*/  mms114_input_close ; 
 int /*<<< orphan*/  mms114_input_open ; 
 int /*<<< orphan*/  mms114_interrupt ; 
 int FUNC20 (struct mms114_data*) ; 
 void* FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct input_dev*,int,TYPE_3__*) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
				  const struct i2c_device_id *id)
{
	struct mms114_data *data;
	struct input_dev *input_dev;
	const void *match_data;
	int error;

	if (!FUNC11(client->adapter,
				I2C_FUNC_PROTOCOL_MANGLING)) {
		FUNC3(&client->dev,
			"Need i2c bus that supports protocol mangling\n");
		return -ENODEV;
	}

	data = FUNC7(&client->dev, sizeof(struct mms114_data),
			    GFP_KERNEL);
	input_dev = FUNC5(&client->dev);
	if (!data || !input_dev) {
		FUNC3(&client->dev, "Failed to allocate memory\n");
		return -ENOMEM;
	}

	data->client = client;
	data->input_dev = input_dev;

	/* FIXME: switch to device_get_match_data() when available */
	match_data = FUNC21(&client->dev);
	if (!match_data)
		return -EINVAL;

	data->type = (enum mms_type)match_data;

	FUNC18(input_dev, EV_ABS, ABS_MT_POSITION_X);
	FUNC18(input_dev, EV_ABS, ABS_MT_POSITION_Y);
	FUNC17(input_dev, ABS_MT_PRESSURE, 0, 255, 0, 0);
	FUNC17(input_dev, ABS_MT_TOUCH_MAJOR,
			     0, MMS114_MAX_AREA, 0, 0);

	FUNC22(input_dev, true, &data->props);
	if (!data->props.max_x || !data->props.max_y) {
		FUNC2(&client->dev,
			"missing X/Y size properties, trying legacy bindings\n");
		error = FUNC20(data);
		if (error)
			return error;

		FUNC17(input_dev, ABS_MT_POSITION_X,
				     0, data->props.max_x, 0, 0);
		FUNC17(input_dev, ABS_MT_POSITION_Y,
				     0, data->props.max_y, 0, 0);
	}

	if (data->type == TYPE_MMS114) {
		/*
		 * The firmware handles movement and pressure fuzz, so
		 * don't duplicate that in software.
		 */
		data->moving_threshold = FUNC13(input_dev,
							    ABS_MT_POSITION_X);
		data->contact_threshold = FUNC13(input_dev,
							     ABS_MT_PRESSURE);
		FUNC14(input_dev, ABS_MT_POSITION_X, 0);
		FUNC14(input_dev, ABS_MT_POSITION_Y, 0);
		FUNC14(input_dev, ABS_MT_PRESSURE, 0);
	}

	input_dev->name = FUNC6(&client->dev, GFP_KERNEL,
					 "MELFAS MMS%d Touchscreen",
					 data->type);
	if (!input_dev->name)
		return -ENOMEM;

	input_dev->id.bustype = BUS_I2C;
	input_dev->dev.parent = &client->dev;
	input_dev->open = mms114_input_open;
	input_dev->close = mms114_input_close;

	error = FUNC15(input_dev, MMS114_MAX_TOUCH,
				    INPUT_MT_DIRECT);
	if (error)
		return error;

	FUNC19(input_dev, data);
	FUNC12(client, data);

	data->core_reg = FUNC8(&client->dev, "avdd");
	if (FUNC0(data->core_reg)) {
		error = FUNC1(data->core_reg);
		FUNC3(&client->dev,
			"Unable to get the Core regulator (%d)\n", error);
		return error;
	}

	data->io_reg = FUNC8(&client->dev, "vdd");
	if (FUNC0(data->io_reg)) {
		error = FUNC1(data->io_reg);
		FUNC3(&client->dev,
			"Unable to get the IO regulator (%d)\n", error);
		return error;
	}

	error = FUNC9(&client->dev, client->irq,
					  NULL, mms114_interrupt, IRQF_ONESHOT,
					  FUNC4(&client->dev), data);
	if (error) {
		FUNC3(&client->dev, "Failed to register interrupt\n");
		return error;
	}
	FUNC10(client->irq);

	error = FUNC16(data->input_dev);
	if (error) {
		FUNC3(&client->dev, "Failed to register input device\n");
		return error;
	}

	return 0;
}