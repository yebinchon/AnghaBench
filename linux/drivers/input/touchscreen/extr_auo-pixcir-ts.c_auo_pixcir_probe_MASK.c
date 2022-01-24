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
struct input_dev {char* name; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  phys; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct auo_pixcir_ts_platdata {int x_max; int y_max; int /*<<< orphan*/  int_setting; int /*<<< orphan*/  gpio_rst; int /*<<< orphan*/  gpio_int; } ;
struct auo_pixcir_ts {int stopped; struct input_dev* input; int /*<<< orphan*/  phys; int /*<<< orphan*/  wait; scalar_t__ touch_ind_mode; struct i2c_client* client; struct auo_pixcir_ts_platdata const* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int AUO_PIXCIR_MAX_AREA ; 
 int /*<<< orphan*/  AUO_PIXCIR_REG_VERSION ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOF_DIR_IN ; 
 int GPIOF_DIR_OUT ; 
 int GPIOF_INIT_HIGH ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (struct auo_pixcir_ts_platdata const*) ; 
 int FUNC1 (struct auo_pixcir_ts_platdata const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auo_pixcir_input_close ; 
 int /*<<< orphan*/  auo_pixcir_input_open ; 
 int FUNC3 (struct auo_pixcir_ts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auo_pixcir_interrupt ; 
 struct auo_pixcir_ts_platdata* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  auo_pixcir_reset ; 
 int FUNC5 (struct auo_pixcir_ts*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 struct auo_pixcir_ts_platdata* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct auo_pixcir_ts*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 struct input_dev* FUNC12 (int /*<<< orphan*/ *) ; 
 struct auo_pixcir_ts* FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct auo_pixcir_ts*) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct auo_pixcir_ts*) ; 
 int FUNC16 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct input_dev*,struct auo_pixcir_ts*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	const struct auo_pixcir_ts_platdata *pdata;
	struct auo_pixcir_ts *ts;
	struct input_dev *input_dev;
	int version;
	int error;

	pdata = FUNC7(&client->dev);
	if (!pdata) {
		pdata = FUNC4(&client->dev);
		if (FUNC0(pdata))
			return FUNC1(pdata);
	}

	ts = FUNC13(&client->dev,
			  sizeof(struct auo_pixcir_ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	input_dev = FUNC12(&client->dev);
	if (!input_dev) {
		FUNC6(&client->dev, "could not allocate input device\n");
		return -ENOMEM;
	}

	ts->pdata = pdata;
	ts->client = client;
	ts->input = input_dev;
	ts->touch_ind_mode = 0;
	ts->stopped = true;
	FUNC17(&ts->wait);

	FUNC22(ts->phys, sizeof(ts->phys),
		 "%s/input0", FUNC9(&client->dev));

	input_dev->name = "AUO-Pixcir touchscreen";
	input_dev->phys = ts->phys;
	input_dev->id.bustype = BUS_I2C;

	input_dev->open = auo_pixcir_input_open;
	input_dev->close = auo_pixcir_input_close;

	FUNC2(EV_ABS, input_dev->evbit);
	FUNC2(EV_KEY, input_dev->evbit);

	FUNC2(BTN_TOUCH, input_dev->keybit);

	/* For single touch */
	FUNC19(input_dev, ABS_X, 0, pdata->x_max, 0, 0);
	FUNC19(input_dev, ABS_Y, 0, pdata->y_max, 0, 0);

	/* For multi touch */
	FUNC19(input_dev, ABS_MT_POSITION_X, 0,
			     pdata->x_max, 0, 0);
	FUNC19(input_dev, ABS_MT_POSITION_Y, 0,
			     pdata->y_max, 0, 0);
	FUNC19(input_dev, ABS_MT_TOUCH_MAJOR, 0,
			     AUO_PIXCIR_MAX_AREA, 0, 0);
	FUNC19(input_dev, ABS_MT_TOUCH_MINOR, 0,
			     AUO_PIXCIR_MAX_AREA, 0, 0);
	FUNC19(input_dev, ABS_MT_ORIENTATION, 0, 1, 0, 0);

	FUNC20(ts->input, ts);

	error = FUNC11(&client->dev, pdata->gpio_int,
				      GPIOF_DIR_IN, "auo_pixcir_ts_int");
	if (error) {
		FUNC6(&client->dev, "request of gpio %d failed, %d\n",
			pdata->gpio_int, error);
		return error;
	}

	error = FUNC11(&client->dev, pdata->gpio_rst,
				      GPIOF_DIR_OUT | GPIOF_INIT_HIGH,
				      "auo_pixcir_ts_rst");
	if (error) {
		FUNC6(&client->dev, "request of gpio %d failed, %d\n",
			pdata->gpio_rst, error);
		return error;
	}

	error = FUNC10(&client->dev, auo_pixcir_reset, ts);
	if (error) {
		FUNC6(&client->dev, "failed to register reset action, %d\n",
			error);
		return error;
	}

	FUNC21(200);

	version = FUNC16(client, AUO_PIXCIR_REG_VERSION);
	if (version < 0) {
		error = version;
		return error;
	}

	FUNC8(&client->dev, "firmware version 0x%X\n", version);

	error = FUNC3(ts, pdata->int_setting);
	if (error)
		return error;

	error = FUNC14(&client->dev, client->irq,
					  NULL, auo_pixcir_interrupt,
					  IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					  input_dev->name, ts);
	if (error) {
		FUNC6(&client->dev, "irq %d requested failed, %d\n",
			client->irq, error);
		return error;
	}

	/* stop device and put it into deep sleep until it is opened */
	error = FUNC5(ts);
	if (error)
		return error;

	error = FUNC18(input_dev);
	if (error) {
		FUNC6(&client->dev, "could not register input device, %d\n",
			error);
		return error;
	}

	FUNC15(client, ts);

	return 0;
}