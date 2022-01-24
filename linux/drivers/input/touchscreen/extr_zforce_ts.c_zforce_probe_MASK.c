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
struct zforce_ts_platdata {int x_max; int y_max; } ;
struct zforce_ts {int /*<<< orphan*/  command_done; int /*<<< orphan*/  command_waiting; struct input_dev* input; int /*<<< orphan*/  phys; struct i2c_client* client; struct zforce_ts_platdata const* pdata; int /*<<< orphan*/  command_mutex; int /*<<< orphan*/  access_mutex; struct zforce_ts_platdata const* reg_vdd; struct zforce_ts_platdata const* gpio_rst; struct zforce_ts_platdata const* gpio_int; } ;
struct TYPE_2__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  phys; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  COMMAND_INITIALIZE ; 
 int /*<<< orphan*/  COMMAND_STATUS ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  INPUT_MT_DIRECT ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (struct zforce_ts_platdata const*) ; 
 int /*<<< orphan*/  NOTIFICATION_BOOTCOMPLETE ; 
 int FUNC1 (struct zforce_ts_platdata const*) ; 
 int /*<<< orphan*/  WAIT_TIMEOUT ; 
 int ZFORCE_MAX_AREA ; 
 int /*<<< orphan*/  ZFORCE_REPORT_POINTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct zforce_ts_platdata* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct zforce_ts*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC11 (int /*<<< orphan*/ *) ; 
 struct zforce_ts* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct zforce_ts_platdata const* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct zforce_ts*) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct zforce_ts*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct input_dev*,struct zforce_ts*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct zforce_ts_platdata const*) ; 
 int FUNC23 (struct zforce_ts_platdata const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct zforce_ts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zforce_input_close ; 
 int /*<<< orphan*/  zforce_input_open ; 
 int /*<<< orphan*/  zforce_irq ; 
 int /*<<< orphan*/  zforce_irq_thread ; 
 struct zforce_ts_platdata* FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zforce_reset ; 
 int /*<<< orphan*/  FUNC29 (struct zforce_ts*) ; 
 int FUNC30 (struct zforce_ts*) ; 

__attribute__((used)) static int FUNC31(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	const struct zforce_ts_platdata *pdata = FUNC4(&client->dev);
	struct zforce_ts *ts;
	struct input_dev *input_dev;
	int ret;

	if (!pdata) {
		pdata = FUNC28(&client->dev);
		if (FUNC0(pdata))
			return FUNC1(pdata);
	}

	ts = FUNC12(&client->dev, sizeof(struct zforce_ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->gpio_rst = FUNC10(&client->dev, "reset",
					       GPIOD_OUT_HIGH);
	if (FUNC0(ts->gpio_rst)) {
		ret = FUNC1(ts->gpio_rst);
		FUNC3(&client->dev,
			"failed to request reset GPIO: %d\n", ret);
		return ret;
	}

	if (ts->gpio_rst) {
		ts->gpio_int = FUNC10(&client->dev, "irq",
						       GPIOD_IN);
		if (FUNC0(ts->gpio_int)) {
			ret = FUNC1(ts->gpio_int);
			FUNC3(&client->dev,
				"failed to request interrupt GPIO: %d\n", ret);
			return ret;
		}
	} else {
		/*
		 * Deprecated GPIO handling for compatibility
		 * with legacy binding.
		 */

		/* INT GPIO */
		ts->gpio_int = FUNC9(&client->dev, NULL, 0,
						    GPIOD_IN);
		if (FUNC0(ts->gpio_int)) {
			ret = FUNC1(ts->gpio_int);
			FUNC3(&client->dev,
				"failed to request interrupt GPIO: %d\n", ret);
			return ret;
		}

		/* RST GPIO */
		ts->gpio_rst = FUNC9(&client->dev, NULL, 1,
					    GPIOD_OUT_HIGH);
		if (FUNC0(ts->gpio_rst)) {
			ret = FUNC1(ts->gpio_rst);
			FUNC3(&client->dev,
				"failed to request reset GPIO: %d\n", ret);
			return ret;
		}
	}

	ts->reg_vdd = FUNC13(&client->dev, "vdd");
	if (FUNC0(ts->reg_vdd)) {
		ret = FUNC1(ts->reg_vdd);
		if (ret == -EPROBE_DEFER)
			return ret;
	} else {
		ret = FUNC23(ts->reg_vdd);
		if (ret)
			return ret;

		/*
		 * according to datasheet add 100us grace time after regular
		 * regulator enable delay.
		 */
		FUNC25(100);
	}

	ret = FUNC8(&client->dev, zforce_reset, ts);
	if (ret) {
		FUNC3(&client->dev, "failed to register reset action, %d\n",
			ret);

		/* hereafter the regulator will be disabled by the action */
		if (!FUNC0(ts->reg_vdd))
			FUNC22(ts->reg_vdd);

		return ret;
	}

	FUNC24(ts->phys, sizeof(ts->phys),
		 "%s/input0", FUNC5(&client->dev));

	input_dev = FUNC11(&client->dev);
	if (!input_dev) {
		FUNC3(&client->dev, "could not allocate input device\n");
		return -ENOMEM;
	}

	FUNC21(&ts->access_mutex);
	FUNC21(&ts->command_mutex);

	ts->pdata = pdata;
	ts->client = client;
	ts->input = input_dev;

	input_dev->name = "Neonode zForce touchscreen";
	input_dev->phys = ts->phys;
	input_dev->id.bustype = BUS_I2C;

	input_dev->open = zforce_input_open;
	input_dev->close = zforce_input_close;

	FUNC2(EV_KEY, input_dev->evbit);
	FUNC2(EV_SYN, input_dev->evbit);
	FUNC2(EV_ABS, input_dev->evbit);

	/* For multi touch */
	FUNC19(input_dev, ABS_MT_POSITION_X, 0,
			     pdata->x_max, 0, 0);
	FUNC19(input_dev, ABS_MT_POSITION_Y, 0,
			     pdata->y_max, 0, 0);

	FUNC19(input_dev, ABS_MT_TOUCH_MAJOR, 0,
			     ZFORCE_MAX_AREA, 0, 0);
	FUNC19(input_dev, ABS_MT_TOUCH_MINOR, 0,
			     ZFORCE_MAX_AREA, 0, 0);
	FUNC19(input_dev, ABS_MT_ORIENTATION, 0, 1, 0, 0);
	FUNC17(input_dev, ZFORCE_REPORT_POINTS, INPUT_MT_DIRECT);

	FUNC20(ts->input, ts);

	FUNC16(&ts->command_done);

	/*
	 * The zforce pulls the interrupt low when it has data ready.
	 * After it is triggered the isr thread runs until all the available
	 * packets have been read and the interrupt is high again.
	 * Therefore we can trigger the interrupt anytime it is low and do
	 * not need to limit it to the interrupt edge.
	 */
	ret = FUNC14(&client->dev, client->irq,
					zforce_irq, zforce_irq_thread,
					IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					input_dev->name, ts);
	if (ret) {
		FUNC3(&client->dev, "irq %d request failed\n", client->irq);
		return ret;
	}

	FUNC15(client, ts);

	/* let the controller boot */
	FUNC29(ts);

	ts->command_waiting = NOTIFICATION_BOOTCOMPLETE;
	if (FUNC26(&ts->command_done, WAIT_TIMEOUT) == 0)
		FUNC6(&client->dev, "bootcomplete timed out\n");

	/* need to start device to get version information */
	ret = FUNC27(ts, COMMAND_INITIALIZE);
	if (ret) {
		FUNC3(&client->dev, "unable to initialize, %d\n", ret);
		return ret;
	}

	/* this gets the firmware version among other information */
	ret = FUNC27(ts, COMMAND_STATUS);
	if (ret < 0) {
		FUNC3(&client->dev, "couldn't get status, %d\n", ret);
		FUNC30(ts);
		return ret;
	}

	/* stop device and put it into sleep until it is opened */
	ret = FUNC30(ts);
	if (ret < 0)
		return ret;

	FUNC7(&client->dev, true);

	ret = FUNC18(input_dev);
	if (ret) {
		FUNC3(&client->dev, "could not register input device, %d\n",
			ret);
		return ret;
	}

	return 0;
}