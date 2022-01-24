#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct w83795_data {scalar_t__ chip_type; int has_in; int has_fan; int enable_dts; int has_dts; int has_gain; int has_pwm; int enable_beep; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  bank; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int OVT_CFG_SEL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W83795_REG_BANKSEL ; 
 int /*<<< orphan*/  W83795_REG_DTSC ; 
 int /*<<< orphan*/  W83795_REG_DTSE ; 
 int /*<<< orphan*/  W83795_REG_FANIN_CTRL1 ; 
 int /*<<< orphan*/  W83795_REG_FANIN_CTRL2 ; 
 int /*<<< orphan*/  W83795_REG_OVT_CFG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  W83795_REG_TEMP_CTRL1 ; 
 int /*<<< orphan*/  W83795_REG_TEMP_CTRL2 ; 
 int /*<<< orphan*/  W83795_REG_VMIGB_CTRL ; 
 int /*<<< orphan*/  W83795_REG_VOLT_CTRL1 ; 
 int /*<<< orphan*/  W83795_REG_VOLT_CTRL2 ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  device_create_file ; 
 int /*<<< orphan*/  device_remove_file_wrapper ; 
 struct w83795_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct w83795_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct w83795_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*) ; 
 int FUNC13 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ w83795g ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int i;
	u8 tmp;
	struct device *dev = &client->dev;
	struct w83795_data *data;
	int err;

	data = FUNC4(dev, sizeof(struct w83795_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC6(client, data);
	data->chip_type = id->driver_data;
	data->bank = FUNC7(client, W83795_REG_BANKSEL);
	FUNC8(&data->update_lock);

	/* Initialize the chip */
	FUNC12(client);

	/* Check which voltages and fans are present */
	data->has_in = FUNC13(client, W83795_REG_VOLT_CTRL1)
		     | (FUNC13(client, W83795_REG_VOLT_CTRL2) << 8);
	data->has_fan = FUNC13(client, W83795_REG_FANIN_CTRL1)
		      | (FUNC13(client, W83795_REG_FANIN_CTRL2) << 8);

	/* Check which analog temperatures and extra voltages are present */
	tmp = FUNC13(client, W83795_REG_TEMP_CTRL1);
	if (tmp & 0x20)
		data->enable_dts = 1;
	FUNC9(data, (tmp >> 2) & 0x3, 5, 16);
	FUNC9(data, tmp & 0x3, 4, 15);
	tmp = FUNC13(client, W83795_REG_TEMP_CTRL2);
	FUNC9(data, tmp >> 6, 3, 20);
	FUNC9(data, (tmp >> 4) & 0x3, 2, 19);
	FUNC9(data, (tmp >> 2) & 0x3, 1, 18);
	FUNC9(data, tmp & 0x3, 0, 17);

	/* Check DTS enable status */
	if (data->enable_dts) {
		if (1 & FUNC13(client, W83795_REG_DTSC))
			data->enable_dts |= 2;
		data->has_dts = FUNC13(client, W83795_REG_DTSE);
	}

	/* Report PECI Tbase values */
	if (data->enable_dts == 1) {
		for (i = 0; i < 8; i++) {
			if (!(data->has_dts & (1 << i)))
				continue;
			tmp = FUNC13(client, FUNC2(i));
			FUNC3(&client->dev,
				 "PECI agent %d Tbase temperature: %u\n",
				 i + 1, (unsigned int)tmp & 0x7f);
		}
	}

	data->has_gain = FUNC13(client, W83795_REG_VMIGB_CTRL) & 0x0f;

	/* pwm and smart fan */
	if (data->chip_type == w83795g)
		data->has_pwm = 8;
	else
		data->has_pwm = 2;

	/* Check if BEEP pin is available */
	if (data->chip_type == w83795g) {
		/* The W83795G has a dedicated BEEP pin */
		data->enable_beep = 1;
	} else {
		/*
		 * The W83795ADG has a shared pin for OVT# and BEEP, so you
		 * can't have both
		 */
		tmp = FUNC13(client, W83795_REG_OVT_CFG);
		if ((tmp & OVT_CFG_SEL) == 0)
			data->enable_beep = 1;
	}

	err = FUNC11(dev, device_create_file);
	if (err)
		goto exit_remove;

	if (data->chip_type == w83795g)
		FUNC10(client);

	data->hwmon_dev = FUNC5(dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC11(dev, device_remove_file_wrapper);
	return err;
}