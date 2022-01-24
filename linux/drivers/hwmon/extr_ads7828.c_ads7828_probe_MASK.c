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
struct regulator {int dummy; } ;
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct ads7828_platform_data {int diff_input; int ext_vref; unsigned int vref_mv; } ;
struct ads7828_data {int /*<<< orphan*/  cmd_byte; struct regulator* regmap; void* lsb_resol; } ;
typedef  enum ads7828_chips { ____Placeholder_ads7828_chips } ads7828_chips ;

/* Variables and functions */
 int /*<<< orphan*/  ADS7828_CMD_PD1 ; 
 int /*<<< orphan*/  ADS7828_CMD_PD3 ; 
 int /*<<< orphan*/  ADS7828_CMD_SD_SE ; 
 unsigned int ADS7828_EXT_VREF_MV_MAX ; 
 unsigned int ADS7828_EXT_VREF_MV_MIN ; 
 unsigned int ADS7828_INT_VREF_MV ; 
 void* FUNC0 (unsigned int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  ads2828_regmap_config ; 
 int /*<<< orphan*/  ads2830_regmap_config ; 
 int ads7828 ; 
 int /*<<< orphan*/  ads7828_groups ; 
 unsigned int FUNC4 (unsigned int,unsigned int,unsigned int) ; 
 struct ads7828_platform_data* FUNC5 (struct device*) ; 
 struct device* FUNC6 (struct device*,int /*<<< orphan*/ ,struct ads7828_data*,int /*<<< orphan*/ ) ; 
 struct ads7828_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regulator* FUNC9 (struct device*,char*) ; 
 scalar_t__ FUNC10 (struct device*) ; 
 int FUNC11 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct regulator*,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC13 (struct regulator*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct ads7828_platform_data *pdata = FUNC5(dev);
	struct ads7828_data *data;
	struct device *hwmon_dev;
	unsigned int vref_mv = ADS7828_INT_VREF_MV;
	unsigned int vref_uv;
	bool diff_input = false;
	bool ext_vref = false;
	unsigned int regval;
	enum ads7828_chips chip;
	struct regulator *reg;

	data = FUNC7(dev, sizeof(struct ads7828_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	if (pdata) {
		diff_input = pdata->diff_input;
		ext_vref = pdata->ext_vref;
		if (ext_vref && pdata->vref_mv)
			vref_mv = pdata->vref_mv;
	} else if (dev->of_node) {
		diff_input = FUNC11(dev->of_node,
						   "ti,differential-input");
		reg = FUNC9(dev, "vref");
		if (!FUNC1(reg)) {
			vref_uv = FUNC13(reg);
			vref_mv = FUNC0(vref_uv, 1000);
			if (vref_mv < ADS7828_EXT_VREF_MV_MIN ||
			    vref_mv > ADS7828_EXT_VREF_MV_MAX)
				return -EINVAL;
			ext_vref = true;
		}
	}

	if (client->dev.of_node)
		chip = (enum ads7828_chips)
			FUNC10(&client->dev);
	else
		chip = id->driver_data;

	/* Bound Vref with min/max values */
	vref_mv = FUNC4(vref_mv, ADS7828_EXT_VREF_MV_MIN,
			    ADS7828_EXT_VREF_MV_MAX);

	/* ADS7828 uses 12-bit samples, while ADS7830 is 8-bit */
	if (chip == ads7828) {
		data->lsb_resol = FUNC0(vref_mv * 1000, 4096);
		data->regmap = FUNC8(client,
						    &ads2828_regmap_config);
	} else {
		data->lsb_resol = FUNC0(vref_mv * 1000, 256);
		data->regmap = FUNC8(client,
						    &ads2830_regmap_config);
	}

	if (FUNC1(data->regmap))
		return FUNC2(data->regmap);

	data->cmd_byte = ext_vref ? ADS7828_CMD_PD1 : ADS7828_CMD_PD3;
	if (!diff_input)
		data->cmd_byte |= ADS7828_CMD_SD_SE;

	/*
	 * Datasheet specifies internal reference voltage is disabled by
	 * default. The internal reference voltage needs to be enabled and
	 * voltage needs to settle before getting valid ADC data. So perform a
	 * dummy read to enable the internal reference voltage.
	 */
	if (!ext_vref)
		FUNC12(data->regmap, data->cmd_byte, &regval);

	hwmon_dev = FUNC6(dev, client->name,
							   data,
							   ads7828_groups);
	return FUNC3(hwmon_dev);
}