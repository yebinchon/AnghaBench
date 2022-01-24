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
struct regulator {int /*<<< orphan*/  of_node; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct regulator dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct adc128_data {int vref; int mode; struct regulator* regulator; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC128_REG_CONFIG_ADV ; 
 int ADC128_REG_MASK ; 
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 int /*<<< orphan*/  adc128_groups ; 
 int FUNC3 (struct adc128_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator*,char*,int) ; 
 struct regulator* FUNC5 (struct regulator*,int /*<<< orphan*/ ,struct adc128_data*,int /*<<< orphan*/ ) ; 
 struct adc128_data* FUNC6 (struct regulator*,int,int /*<<< orphan*/ ) ; 
 struct regulator* FUNC7 (struct regulator*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct adc128_data*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct regulator*) ; 
 int FUNC13 (struct regulator*) ; 
 int FUNC14 (struct regulator*) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct regulator *regulator;
	struct device *hwmon_dev;
	struct adc128_data *data;
	int err, vref;

	data = FUNC6(dev, sizeof(struct adc128_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* vref is optional. If specified, is used as chip reference voltage */
	regulator = FUNC7(dev, "vref");
	if (!FUNC1(regulator)) {
		data->regulator = regulator;
		err = FUNC13(regulator);
		if (err < 0)
			return err;
		vref = FUNC14(regulator);
		if (vref < 0) {
			err = vref;
			goto error;
		}
		data->vref = FUNC0(vref, 1000);
	} else {
		data->vref = 2560;	/* 2.56V, in mV */
	}

	/* Operation mode is optional. If unspecified, keep current mode */
	if (FUNC11(dev->of_node, "ti,mode", &data->mode) == 0) {
		if (data->mode > 3) {
			FUNC4(dev, "invalid operation mode %d\n",
				data->mode);
			err = -EINVAL;
			goto error;
		}
	} else {
		err = FUNC9(client, ADC128_REG_CONFIG_ADV);
		if (err < 0)
			goto error;
		data->mode = (err >> 1) & ADC128_REG_MASK;
	}

	data->client = client;
	FUNC8(client, data);
	FUNC10(&data->update_lock);

	/* Initialize the chip */
	err = FUNC3(data);
	if (err < 0)
		goto error;

	hwmon_dev = FUNC5(dev, client->name,
							   data, adc128_groups);
	if (FUNC1(hwmon_dev)) {
		err = FUNC2(hwmon_dev);
		goto error;
	}

	return 0;

error:
	if (data->regulator)
		FUNC12(data->regulator);
	return err;
}