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
struct mcs_platform_data {int /*<<< orphan*/  (* cfg_pin ) () ;} ;
struct mcs5000_ts_data {struct input_dev* input_dev; struct i2c_client* client; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  MCS5000_MAX_XC ; 
 int /*<<< orphan*/  MCS5000_MAX_YC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct mcs_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC3 (int /*<<< orphan*/ *) ; 
 struct mcs5000_ts_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct mcs5000_ts_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct mcs5000_ts_data*) ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcs5000_ts_interrupt ; 
 int /*<<< orphan*/  FUNC9 (struct mcs5000_ts_data*,struct mcs_platform_data const*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	const struct mcs_platform_data *pdata;
	struct mcs5000_ts_data *data;
	struct input_dev *input_dev;
	int error;

	pdata = FUNC2(&client->dev);
	if (!pdata)
		return -EINVAL;

	data = FUNC4(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data) {
		FUNC1(&client->dev, "Failed to allocate memory\n");
		return -ENOMEM;
	}

	data->client = client;

	input_dev = FUNC3(&client->dev);
	if (!input_dev) {
		FUNC1(&client->dev, "Failed to allocate input device\n");
		return -ENOMEM;
	}

	input_dev->name = "MELFAS MCS-5000 Touchscreen";
	input_dev->id.bustype = BUS_I2C;
	input_dev->dev.parent = &client->dev;

	FUNC0(EV_ABS, input_dev->evbit);
	FUNC0(EV_KEY, input_dev->evbit);
	FUNC0(BTN_TOUCH, input_dev->keybit);
	FUNC8(input_dev, ABS_X, 0, MCS5000_MAX_XC, 0, 0);
	FUNC8(input_dev, ABS_Y, 0, MCS5000_MAX_YC, 0, 0);

	data->input_dev = input_dev;

	if (pdata->cfg_pin)
		pdata->cfg_pin();

	error = FUNC5(&client->dev, client->irq,
					  NULL, mcs5000_ts_interrupt,
					  IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					  "mcs5000_ts", data);
	if (error) {
		FUNC1(&client->dev, "Failed to register interrupt\n");
		return error;
	}

	error = FUNC7(data->input_dev);
	if (error) {
		FUNC1(&client->dev, "Failed to register input device\n");
		return error;
	}

	FUNC9(data, pdata);
	FUNC6(client, data);

	return 0;
}