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
struct max16065_data {int num_adc; int have_current; int curr_gain; int /*<<< orphan*/ ** groups; int /*<<< orphan*/ * range; int /*<<< orphan*/ ** limit; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {size_t driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX16065_CURR_CONTROL ; 
 int MAX16065_CURR_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 size_t MAX16065_NUM_ADC ; 
 int MAX16065_NUM_LIMIT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MAX16065_SW_ENABLE ; 
 int MAX16065_WARNING_OV ; 
 int FUNC4 (struct device*) ; 
 struct device* FUNC5 (struct device*,int /*<<< orphan*/ ,struct max16065_data*,int /*<<< orphan*/ **) ; 
 struct max16065_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,int) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * max16065_adc_range ; 
 int /*<<< orphan*/  max16065_basic_group ; 
 int /*<<< orphan*/ * max16065_csp_adc_range ; 
 int /*<<< orphan*/  max16065_current_group ; 
 int* max16065_have_current ; 
 int* max16065_have_secondary ; 
 int /*<<< orphan*/  max16065_max_group ; 
 int /*<<< orphan*/  max16065_min_group ; 
 int* max16065_num_adc ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct max16065_data *data;
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	int i, j, val;
	bool have_secondary;		/* true if chip has secondary limits */
	bool secondary_is_max = false;	/* secondary limits reflect max */
	int groups = 0;

	if (!FUNC7(adapter, I2C_FUNC_SMBUS_BYTE_DATA
				     | I2C_FUNC_SMBUS_READ_WORD_DATA))
		return -ENODEV;

	data = FUNC6(dev, sizeof(*data), GFP_KERNEL);
	if (FUNC10(!data))
		return -ENOMEM;

	data->client = client;
	FUNC9(&data->update_lock);

	data->num_adc = max16065_num_adc[id->driver_data];
	data->have_current = max16065_have_current[id->driver_data];
	have_secondary = max16065_have_secondary[id->driver_data];

	if (have_secondary) {
		val = FUNC8(client, MAX16065_SW_ENABLE);
		if (FUNC10(val < 0))
			return val;
		secondary_is_max = val & MAX16065_WARNING_OV;
	}

	/* Read scale registers, convert to range */
	for (i = 0; i < FUNC0(data->num_adc, 4); i++) {
		val = FUNC8(client, FUNC3(i));
		if (FUNC10(val < 0))
			return val;
		for (j = 0; j < 4 && i * 4 + j < data->num_adc; j++) {
			data->range[i * 4 + j] =
			  max16065_adc_range[(val >> (j * 2)) & 0x3];
		}
	}

	/* Read limits */
	for (i = 0; i < MAX16065_NUM_LIMIT; i++) {
		if (i == 0 && !have_secondary)
			continue;

		for (j = 0; j < data->num_adc; j++) {
			val = FUNC8(client,
						       FUNC2(i, j));
			if (FUNC10(val < 0))
				return val;
			data->limit[i][j] = FUNC1(val, data->range[j]);
		}
	}

	/* sysfs hooks */
	data->groups[groups++] = &max16065_basic_group;
	if (have_secondary)
		data->groups[groups++] = secondary_is_max ?
			&max16065_max_group : &max16065_min_group;

	if (data->have_current) {
		val = FUNC8(client, MAX16065_CURR_CONTROL);
		if (FUNC10(val < 0))
			return val;
		if (val & MAX16065_CURR_ENABLE) {
			/*
			 * Current gain is 6, 12, 24, 48 based on values in
			 * bit 2,3.
			 */
			data->curr_gain = 6 << ((val >> 2) & 0x03);
			data->range[MAX16065_NUM_ADC]
			  = max16065_csp_adc_range[(val >> 1) & 0x01];
			data->groups[groups++] = &max16065_current_group;
		} else {
			data->have_current = false;
		}
	}

	hwmon_dev = FUNC5(dev, client->name,
							   data, data->groups);
	return FUNC4(hwmon_dev);
}