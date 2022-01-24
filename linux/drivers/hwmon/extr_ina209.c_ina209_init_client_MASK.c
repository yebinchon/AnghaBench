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
typedef  int u32 ;
struct ina2xx_platform_data {scalar_t__ shunt_uohms; } ;
struct ina209_data {int calibration_orig; int config_orig; int /*<<< orphan*/  update_interval; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INA209_CALIBRATION ; 
 int /*<<< orphan*/  INA209_CONFIGURATION ; 
 int /*<<< orphan*/  INA209_CONFIG_DEFAULT ; 
 int INA209_SHUNT_DEFAULT ; 
 int /*<<< orphan*/  INA209_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 struct ina2xx_platform_data* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			      struct ina209_data *data)
{
	struct ina2xx_platform_data *pdata = FUNC1(&client->dev);
	u32 shunt;
	int reg;

	reg = FUNC2(client, INA209_CALIBRATION);
	if (reg < 0)
		return reg;
	data->calibration_orig = reg;

	reg = FUNC2(client, INA209_CONFIGURATION);
	if (reg < 0)
		return reg;
	data->config_orig = reg;

	if (pdata) {
		if (pdata->shunt_uohms <= 0)
			return -EINVAL;
		shunt = pdata->shunt_uohms;
	} else if (!FUNC5(client->dev.of_node, "shunt-resistor",
					 &shunt)) {
		if (shunt == 0)
			return -EINVAL;
	} else {
		shunt = data->calibration_orig ?
		  40960000 / data->calibration_orig : INA209_SHUNT_DEFAULT;
	}

	FUNC3(client, INA209_CONFIGURATION,
				     INA209_CONFIG_DEFAULT);
	data->update_interval = FUNC4(INA209_CONFIG_DEFAULT);

	/*
	 * Calibrate current LSB to 1mA. Shunt is in uOhms.
	 * See equation 13 in datasheet.
	 */
	FUNC3(client, INA209_CALIBRATION,
				     FUNC0(40960000 / shunt, 1, 65535));

	/* Clear status register */
	FUNC2(client, INA209_STATUS);

	return 0;
}