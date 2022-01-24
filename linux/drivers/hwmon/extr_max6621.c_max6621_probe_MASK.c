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
struct max6621_data {int* input_chan2reg; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX6621_CONFIG0_INIT ; 
 int /*<<< orphan*/  MAX6621_CONFIG0_REG ; 
 int /*<<< orphan*/  MAX6621_CONFIG1_INIT ; 
 int /*<<< orphan*/  MAX6621_CONFIG1_REG ; 
 int MAX6621_TEMP_INPUT_REG_NUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 struct device* FUNC3 (struct device*,int /*<<< orphan*/ ,struct max6621_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct max6621_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct max6621_data*) ; 
 int FUNC7 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  max6621_chip_info ; 
 int /*<<< orphan*/  max6621_regmap_config ; 
 int* max6621_temp_regs ; 
 int FUNC8 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct max6621_data *data;
	struct device *hwmon_dev;
	int i;
	int ret;

	data = FUNC4(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->regmap = FUNC5(client, &max6621_regmap_config);
	if (FUNC0(data->regmap))
		return FUNC1(data->regmap);

	FUNC6(client, data);
	data->client = client;

	/* Set CONFIG0 register masking temperature alerts and PEC. */
	ret = FUNC11(data->regmap, MAX6621_CONFIG0_REG,
			   MAX6621_CONFIG0_INIT);
	if (ret)
		return ret;

	/* Set CONFIG1 register for PEC access retry number. */
	ret = FUNC11(data->regmap, MAX6621_CONFIG1_REG,
			   MAX6621_CONFIG1_INIT);
	if (ret)
		return ret;

	/* Sync registers with hardware. */
	FUNC9(data->regmap);
	ret = FUNC10(data->regmap);
	if (ret)
		return ret;

	/* Verify which temperature input registers are enabled. */
	for (i = 0; i < MAX6621_TEMP_INPUT_REG_NUM; i++) {
		ret = FUNC7(client, max6621_temp_regs[i]);
		if (ret < 0)
			return ret;
		ret = FUNC8(dev, ret);
		if (ret) {
			data->input_chan2reg[i] = -1;
			continue;
		}

		data->input_chan2reg[i] = max6621_temp_regs[i];
	}

	hwmon_dev = FUNC3(dev, client->name,
							 data,
							 &max6621_chip_info,
							 NULL);

	return FUNC2(hwmon_dev);
}