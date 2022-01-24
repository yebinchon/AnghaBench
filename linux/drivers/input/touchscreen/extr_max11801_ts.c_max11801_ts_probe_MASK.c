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
struct max11801_data {struct input_dev* input_dev; struct i2c_client* client; } ;
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
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  MAX11801_MAX_X ; 
 int /*<<< orphan*/  MAX11801_MAX_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 struct max11801_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct max11801_data*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max11801_ts_interrupt ; 
 int /*<<< orphan*/  FUNC7 (struct max11801_data*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
				       const struct i2c_device_id *id)
{
	struct max11801_data *data;
	struct input_dev *input_dev;
	int error;

	data = FUNC3(&client->dev, sizeof(*data), GFP_KERNEL);
	input_dev = FUNC2(&client->dev);
	if (!data || !input_dev) {
		FUNC1(&client->dev, "Failed to allocate memory\n");
		return -ENOMEM;
	}

	data->client = client;
	data->input_dev = input_dev;

	input_dev->name = "max11801_ts";
	input_dev->id.bustype = BUS_I2C;
	input_dev->dev.parent = &client->dev;

	FUNC0(EV_ABS, input_dev->evbit);
	FUNC0(EV_KEY, input_dev->evbit);
	FUNC0(BTN_TOUCH, input_dev->keybit);
	FUNC6(input_dev, ABS_X, 0, MAX11801_MAX_X, 0, 0);
	FUNC6(input_dev, ABS_Y, 0, MAX11801_MAX_Y, 0, 0);

	FUNC7(data);

	error = FUNC4(&client->dev, client->irq, NULL,
					  max11801_ts_interrupt,
					  IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					  "max11801_ts", data);
	if (error) {
		FUNC1(&client->dev, "Failed to register interrupt\n");
		return error;
	}

	error = FUNC5(data->input_dev);
	if (error)
		return error;

	return 0;
}