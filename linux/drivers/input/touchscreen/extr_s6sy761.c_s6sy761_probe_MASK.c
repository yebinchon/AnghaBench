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
struct s6sy761_data {TYPE_2__* input; int /*<<< orphan*/  tx_channel; int /*<<< orphan*/  prop; TYPE_8__* regulators; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;
struct TYPE_13__ {char* supply; } ;
struct TYPE_11__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_12__ {int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int /*<<< orphan*/  INPUT_MT_DIRECT ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  S6SY761_DEV_NAME ; 
 size_t S6SY761_REGULATOR_AVDD ; 
 size_t S6SY761_REGULATOR_VDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct s6sy761_data*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 struct s6sy761_data* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct s6sy761_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct s6sy761_data*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,struct s6sy761_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s6sy761_attribute_group ; 
 int FUNC16 (struct s6sy761_data*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  s6sy761_input_close ; 
 int /*<<< orphan*/  s6sy761_input_open ; 
 int /*<<< orphan*/  s6sy761_irq_handler ; 
 int /*<<< orphan*/  s6sy761_power_off ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct s6sy761_data *sdata;
	unsigned int max_x, max_y;
	int err;

	if (!FUNC8(client->adapter, I2C_FUNC_I2C |
						I2C_FUNC_SMBUS_BYTE_DATA |
						I2C_FUNC_SMBUS_I2C_BLOCK))
		return -ENODEV;

	sdata = FUNC5(&client->dev, sizeof(*sdata), GFP_KERNEL);
	if (!sdata)
		return -ENOMEM;

	FUNC9(client, sdata);
	sdata->client = client;

	sdata->regulators[S6SY761_REGULATOR_VDD].supply = "vdd";
	sdata->regulators[S6SY761_REGULATOR_AVDD].supply = "avdd";
	err = FUNC6(&client->dev,
				      FUNC0(sdata->regulators),
				      sdata->regulators);
	if (err)
		return err;

	err = FUNC2(&client->dev, s6sy761_power_off, sdata);
	if (err)
		return err;

	err = FUNC16(sdata, &max_x, &max_y);
	if (err)
		return err;

	sdata->input = FUNC4(&client->dev);
	if (!sdata->input)
		return -ENOMEM;

	sdata->input->name = S6SY761_DEV_NAME;
	sdata->input->id.bustype = BUS_I2C;
	sdata->input->open = s6sy761_input_open;
	sdata->input->close = s6sy761_input_close;

	FUNC13(sdata->input, ABS_MT_POSITION_X, 0, max_x, 0, 0);
	FUNC13(sdata->input, ABS_MT_POSITION_Y, 0, max_y, 0, 0);
	FUNC13(sdata->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
	FUNC13(sdata->input, ABS_MT_TOUCH_MINOR, 0, 255, 0, 0);
	FUNC13(sdata->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
	FUNC13(sdata->input, ABS_MT_TOUCH_MINOR, 0, 255, 0, 0);
	FUNC13(sdata->input, ABS_MT_PRESSURE, 0, 255, 0, 0);

	FUNC17(sdata->input, true, &sdata->prop);

	if (!FUNC10(sdata->input, ABS_X) ||
	    !FUNC10(sdata->input, ABS_Y)) {
		FUNC1(&client->dev, "the axis have not been set\n");
	}

	err = FUNC11(sdata->input, sdata->tx_channel,
				  INPUT_MT_DIRECT);
	if (err)
		return err;

	FUNC14(sdata->input, sdata);

	err = FUNC12(sdata->input);
	if (err)
		return err;

	err = FUNC7(&client->dev, client->irq, NULL,
					s6sy761_irq_handler,
					IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					"s6sy761_irq", sdata);
	if (err)
		return err;

	err = FUNC3(&client->dev, &s6sy761_attribute_group);
	if (err)
		return err;

	FUNC15(&client->dev);

	return 0;
}