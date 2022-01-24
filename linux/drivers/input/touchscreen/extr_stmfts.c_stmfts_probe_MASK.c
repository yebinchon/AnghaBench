#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct stmfts_data {int /*<<< orphan*/ * ledvdd; scalar_t__ use_key; TYPE_2__* input; int /*<<< orphan*/  prop; TYPE_8__* regulators; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  mutex; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;
struct TYPE_13__ {char* supply; } ;
struct TYPE_11__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_12__ {int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int /*<<< orphan*/  INPUT_MT_DIRECT ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  KEY_BACK ; 
 int /*<<< orphan*/  KEY_MENU ; 
 int /*<<< orphan*/  STMFTS_DEV_NAME ; 
 int /*<<< orphan*/  STMFTS_MAX_FINGERS ; 
 size_t STMFTS_REGULATOR_AVDD ; 
 size_t STMFTS_REGULATOR_VDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct stmfts_data*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 struct stmfts_data* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct stmfts_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct stmfts_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,struct stmfts_data*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stmfts_attribute_group ; 
 int FUNC22 (struct stmfts_data*) ; 
 int /*<<< orphan*/  stmfts_input_close ; 
 int /*<<< orphan*/  stmfts_input_open ; 
 int /*<<< orphan*/  stmfts_irq_handler ; 
 int /*<<< orphan*/  stmfts_power_off ; 
 int FUNC23 (struct stmfts_data*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int err;
	struct stmfts_data *sdata;

	if (!FUNC11(client->adapter, I2C_FUNC_I2C |
						I2C_FUNC_SMBUS_BYTE_DATA |
						I2C_FUNC_SMBUS_I2C_BLOCK))
		return -ENODEV;

	sdata = FUNC8(&client->dev, sizeof(*sdata), GFP_KERNEL);
	if (!sdata)
		return -ENOMEM;

	FUNC12(client, sdata);

	sdata->client = client;
	FUNC20(&sdata->mutex);
	FUNC13(&sdata->cmd_done);

	sdata->regulators[STMFTS_REGULATOR_VDD].supply = "vdd";
	sdata->regulators[STMFTS_REGULATOR_AVDD].supply = "avdd";
	err = FUNC9(&client->dev,
				      FUNC0(sdata->regulators),
				      sdata->regulators);
	if (err)
		return err;

	sdata->input = FUNC7(&client->dev);
	if (!sdata->input)
		return -ENOMEM;

	sdata->input->name = STMFTS_DEV_NAME;
	sdata->input->id.bustype = BUS_I2C;
	sdata->input->open = stmfts_input_open;
	sdata->input->close = stmfts_input_close;

	FUNC17(sdata->input, EV_ABS, ABS_MT_POSITION_X);
	FUNC17(sdata->input, EV_ABS, ABS_MT_POSITION_Y);
	FUNC24(sdata->input, true, &sdata->prop);

	FUNC16(sdata->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
	FUNC16(sdata->input, ABS_MT_TOUCH_MINOR, 0, 255, 0, 0);
	FUNC16(sdata->input, ABS_MT_ORIENTATION, 0, 255, 0, 0);
	FUNC16(sdata->input, ABS_MT_PRESSURE, 0, 255, 0, 0);
	FUNC16(sdata->input, ABS_DISTANCE, 0, 255, 0, 0);

	sdata->use_key = FUNC4(&client->dev,
						   "touch-key-connected");
	if (sdata->use_key) {
		FUNC17(sdata->input, EV_KEY, KEY_MENU);
		FUNC17(sdata->input, EV_KEY, KEY_BACK);
	}

	err = FUNC14(sdata->input,
				  STMFTS_MAX_FINGERS, INPUT_MT_DIRECT);
	if (err)
		return err;

	FUNC18(sdata->input, sdata);

	/*
	 * stmfts_power_on expects interrupt to be disabled, but
	 * at this point the device is still off and I do not trust
	 * the status of the irq line that can generate some spurious
	 * interrupts. To be on the safe side it's better to not enable
	 * the interrupts during their request.
	 */
	FUNC19(client->irq, IRQ_NOAUTOEN);
	err = FUNC10(&client->dev, client->irq,
					NULL, stmfts_irq_handler,
					IRQF_ONESHOT,
					"stmfts_irq", sdata);
	if (err)
		return err;

	FUNC1(&client->dev, "initializing ST-Microelectronics FTS...\n");

	err = FUNC23(sdata);
	if (err)
		return err;

	err = FUNC5(&client->dev, stmfts_power_off, sdata);
	if (err)
		return err;

	err = FUNC15(sdata->input);
	if (err)
		return err;

	if (sdata->use_key) {
		err = FUNC22(sdata);
		if (err) {
			/*
			 * Even if the LEDs have failed to be initialized and
			 * used in the driver, I can still use the device even
			 * without LEDs. The ledvdd regulator pointer will be
			 * used as a flag.
			 */
			FUNC2(&client->dev, "unable to use touchkey leds\n");
			sdata->ledvdd = NULL;
		}
	}

	err = FUNC6(&client->dev, &stmfts_attribute_group);
	if (err)
		return err;

	FUNC21(&client->dev);
	FUNC3(&client->dev);

	return 0;
}