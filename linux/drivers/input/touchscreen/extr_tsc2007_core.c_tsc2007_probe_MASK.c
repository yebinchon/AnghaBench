#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct tsc2007_platform_data {int /*<<< orphan*/  (* init_platform_hw ) () ;scalar_t__ exit_platform_hw; } ;
struct tsc2007 {int /*<<< orphan*/  irq; int /*<<< orphan*/  fuzzz; int /*<<< orphan*/  fuzzy; int /*<<< orphan*/  fuzzx; int /*<<< orphan*/  phys; int /*<<< orphan*/  mlock; int /*<<< orphan*/  wait; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_11__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  phys; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_13__ {TYPE_2__* driver; } ;
struct i2c_client {TYPE_3__ dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  MAX_12BIT ; 
 int /*<<< orphan*/  PWRDOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int,...) ; 
 struct tsc2007_platform_data* FUNC1 (TYPE_3__*) ; 
 char* FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 struct input_dev* FUNC4 (TYPE_3__*) ; 
 struct tsc2007* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tsc2007*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct tsc2007*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,struct tsc2007*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  tsc2007_call_exit_platform_hw ; 
 int /*<<< orphan*/  tsc2007_close ; 
 int /*<<< orphan*/  tsc2007_hard_irq ; 
 int FUNC17 (struct tsc2007*) ; 
 int /*<<< orphan*/  tsc2007_open ; 
 int FUNC18 (struct i2c_client*,struct tsc2007*) ; 
 int FUNC19 (struct i2c_client*,struct tsc2007*,struct tsc2007_platform_data const*,struct i2c_device_id const*) ; 
 int /*<<< orphan*/  tsc2007_soft_irq ; 
 int /*<<< orphan*/  FUNC20 (struct tsc2007*) ; 
 int FUNC21 (struct tsc2007*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	const struct tsc2007_platform_data *pdata =
		FUNC1(&client->dev);
	struct tsc2007 *ts;
	struct input_dev *input_dev;
	int err;

	if (!FUNC7(client->adapter,
				     I2C_FUNC_SMBUS_READ_WORD_DATA))
		return -EIO;

	ts = FUNC5(&client->dev, sizeof(struct tsc2007), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	if (pdata)
		err = FUNC19(client, ts, pdata, id);
	else
		err = FUNC18(client, ts);
	if (err)
		return err;

	input_dev = FUNC4(&client->dev);
	if (!input_dev)
		return -ENOMEM;

	FUNC8(client, ts);

	ts->client = client;
	ts->irq = client->irq;
	ts->input = input_dev;

	FUNC9(&ts->wait);
	FUNC14(&ts->mlock);

	FUNC15(ts->phys, sizeof(ts->phys),
		 "%s/input0", FUNC2(&client->dev));

	input_dev->name = "TSC2007 Touchscreen";
	input_dev->phys = ts->phys;
	input_dev->id.bustype = BUS_I2C;

	input_dev->open = tsc2007_open;
	input_dev->close = tsc2007_close;

	FUNC13(input_dev, ts);

	FUNC12(input_dev, EV_KEY, BTN_TOUCH);

	FUNC11(input_dev, ABS_X, 0, MAX_12BIT, ts->fuzzx, 0);
	FUNC11(input_dev, ABS_Y, 0, MAX_12BIT, ts->fuzzy, 0);
	FUNC11(input_dev, ABS_PRESSURE, 0, MAX_12BIT,
			     ts->fuzzz, 0);

	if (pdata) {
		if (pdata->exit_platform_hw) {
			err = FUNC3(&client->dev,
					      tsc2007_call_exit_platform_hw,
					      &client->dev);
			if (err) {
				FUNC0(&client->dev,
					"Failed to register exit_platform_hw action, %d\n",
					err);
				return err;
			}
		}

		if (pdata->init_platform_hw)
			pdata->init_platform_hw();
	}

	err = FUNC6(&client->dev, ts->irq,
					tsc2007_hard_irq, tsc2007_soft_irq,
					IRQF_ONESHOT,
					client->dev.driver->name, ts);
	if (err) {
		FUNC0(&client->dev, "Failed to request irq %d: %d\n",
			ts->irq, err);
		return err;
	}

	FUNC20(ts);

	/* power down the chip (TSC2007_SETUP does not ACK on I2C) */
	err = FUNC21(ts, PWRDOWN);
	if (err < 0) {
		FUNC0(&client->dev,
			"Failed to setup chip: %d\n", err);
		return err;	/* chip does not respond */
	}

	err = FUNC10(input_dev);
	if (err) {
		FUNC0(&client->dev,
			"Failed to register input device: %d\n", err);
		return err;
	}

	err =  FUNC17(ts);
	if (err) {
		FUNC0(&client->dev,
			"Failed to register with IIO: %d\n", err);
		return err;
	}

	return 0;
}