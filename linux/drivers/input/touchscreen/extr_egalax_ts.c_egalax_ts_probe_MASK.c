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
struct input_dev {char* name; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct egalax_ts {struct input_dev* input_dev; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  EGALAX_MAX_X ; 
 int /*<<< orphan*/  EGALAX_MAX_Y ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  MAX_SUPPORT_POINTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 struct egalax_ts* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct egalax_ts*) ; 
 int FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  egalax_ts_interrupt ; 
 int FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct egalax_ts *ts;
	struct input_dev *input_dev;
	int error;

	ts = FUNC3(&client->dev, sizeof(struct egalax_ts), GFP_KERNEL);
	if (!ts) {
		FUNC1(&client->dev, "Failed to allocate memory\n");
		return -ENOMEM;
	}

	input_dev = FUNC2(&client->dev);
	if (!input_dev) {
		FUNC1(&client->dev, "Failed to allocate memory\n");
		return -ENOMEM;
	}

	ts->client = client;
	ts->input_dev = input_dev;

	/* controller may be in sleep, wake it up. */
	error = FUNC6(client);
	if (error) {
		FUNC1(&client->dev, "Failed to wake up the controller\n");
		return error;
	}

	error = FUNC5(client);
	if (error < 0) {
		FUNC1(&client->dev, "Failed to read firmware version\n");
		return error;
	}

	input_dev->name = "EETI eGalax Touch Screen";
	input_dev->id.bustype = BUS_I2C;

	FUNC0(EV_ABS, input_dev->evbit);
	FUNC0(EV_KEY, input_dev->evbit);
	FUNC0(BTN_TOUCH, input_dev->keybit);

	FUNC9(input_dev, ABS_X, 0, EGALAX_MAX_X, 0, 0);
	FUNC9(input_dev, ABS_Y, 0, EGALAX_MAX_Y, 0, 0);
	FUNC9(input_dev,
			     ABS_MT_POSITION_X, 0, EGALAX_MAX_X, 0, 0);
	FUNC9(input_dev,
			     ABS_MT_POSITION_Y, 0, EGALAX_MAX_Y, 0, 0);
	FUNC7(input_dev, MAX_SUPPORT_POINTS, 0);

	error = FUNC4(&client->dev, client->irq, NULL,
					  egalax_ts_interrupt,
					  IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					  "egalax_ts", ts);
	if (error < 0) {
		FUNC1(&client->dev, "Failed to register interrupt\n");
		return error;
	}

	error = FUNC8(ts->input_dev);
	if (error)
		return error;

	return 0;
}