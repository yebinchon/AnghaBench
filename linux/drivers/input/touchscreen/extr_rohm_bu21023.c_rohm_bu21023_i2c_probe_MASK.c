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
struct rohm_ts_data {struct input_dev* input; int /*<<< orphan*/  setup2; struct i2c_client* client; } ;
struct TYPE_6__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_3__ id; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; TYPE_2__* adapter; struct device dev; } ;
struct TYPE_5__ {TYPE_1__* algo; } ;
struct TYPE_4__ {int /*<<< orphan*/  master_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  BU21023_NAME ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_TRACK ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  MAF_1SAMPLE ; 
 int /*<<< orphan*/  MAX_CONTACTS ; 
 int /*<<< orphan*/  ROHM_TS_ABS_X_MAX ; 
 int /*<<< orphan*/  ROHM_TS_ABS_X_MIN ; 
 int /*<<< orphan*/  ROHM_TS_ABS_Y_MAX ; 
 int /*<<< orphan*/  ROHM_TS_ABS_Y_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC2 (struct device*) ; 
 struct rohm_ts_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rohm_ts_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct rohm_ts_data*) ; 
 int FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,struct rohm_ts_data*) ; 
 int /*<<< orphan*/  rohm_ts_attr_group ; 
 int /*<<< orphan*/  rohm_ts_close ; 
 int /*<<< orphan*/  rohm_ts_open ; 
 int FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  rohm_ts_soft_irq ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
				  const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct rohm_ts_data *ts;
	struct input_dev *input;
	int error;

	if (!client->irq) {
		FUNC0(dev, "IRQ is not assigned\n");
		return -EINVAL;
	}

	if (!client->adapter->algo->master_xfer) {
		FUNC0(dev, "I2C level transfers not supported\n");
		return -EOPNOTSUPP;
	}

	/* Turn off CPU just in case */
	error = FUNC10(client);
	if (error)
		return error;

	ts = FUNC3(dev, sizeof(struct rohm_ts_data), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->client = client;
	ts->setup2 = MAF_1SAMPLE;
	FUNC5(client, ts);

	input = FUNC2(dev);
	if (!input)
		return -ENOMEM;

	input->name = BU21023_NAME;
	input->id.bustype = BUS_I2C;
	input->open = rohm_ts_open;
	input->close = rohm_ts_close;

	ts->input = input;
	FUNC9(input, ts);

	FUNC8(input, ABS_MT_POSITION_X,
			     ROHM_TS_ABS_X_MIN, ROHM_TS_ABS_X_MAX, 0, 0);
	FUNC8(input, ABS_MT_POSITION_Y,
			     ROHM_TS_ABS_Y_MIN, ROHM_TS_ABS_Y_MAX, 0, 0);

	error = FUNC6(input, MAX_CONTACTS,
				    INPUT_MT_DIRECT | INPUT_MT_TRACK |
				    INPUT_MT_DROP_UNUSED);
	if (error) {
		FUNC0(dev, "failed to multi touch slots initialization\n");
		return error;
	}

	error = FUNC4(dev, client->irq,
					  NULL, rohm_ts_soft_irq,
					  IRQF_ONESHOT, client->name, ts);
	if (error) {
		FUNC0(dev, "failed to request IRQ: %d\n", error);
		return error;
	}

	error = FUNC7(input);
	if (error) {
		FUNC0(dev, "failed to register input device: %d\n", error);
		return error;
	}

	error = FUNC1(dev, &rohm_ts_attr_group);
	if (error) {
		FUNC0(dev, "failed to create sysfs group: %d\n", error);
		return error;
	}

	return error;
}