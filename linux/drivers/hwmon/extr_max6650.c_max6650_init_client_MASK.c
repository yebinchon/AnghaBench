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
typedef  int u32 ;
struct max6650_data {int config; int speed; int dac; int count; int alarm_en; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX6650_CFG_MODE_CLOSED_LOOP ; 
 int MAX6650_CFG_PRESCALER_16 ; 
 int MAX6650_CFG_PRESCALER_2 ; 
 int MAX6650_CFG_PRESCALER_4 ; 
 int MAX6650_CFG_PRESCALER_8 ; 
 int MAX6650_CFG_PRESCALER_MASK ; 
 int MAX6650_CFG_V12 ; 
 int /*<<< orphan*/  MAX6650_REG_ALARM_EN ; 
 int /*<<< orphan*/  MAX6650_REG_CONFIG ; 
 int /*<<< orphan*/  MAX6650_REG_COUNT ; 
 int /*<<< orphan*/  MAX6650_REG_DAC ; 
 int /*<<< orphan*/  MAX6650_REG_SPEED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int fan_voltage ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct max6650_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct max6650_data*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int*) ; 
 int prescaler ; 

__attribute__((used)) static int FUNC7(struct max6650_data *data,
			       struct i2c_client *client)
{
	struct device *dev = &client->dev;
	int reg;
	int err;
	u32 voltage;
	u32 prescale;
	u32 target_rpm;

	if (FUNC6(dev->of_node, "maxim,fan-microvolt",
				 &voltage))
		voltage = fan_voltage;
	else
		voltage /= 1000000; /* Microvolts to volts */
	if (FUNC6(dev->of_node, "maxim,fan-prescale",
				 &prescale))
		prescale = prescaler;

	reg = FUNC2(client, MAX6650_REG_CONFIG);
	if (reg < 0) {
		FUNC0(dev, "Error reading config register, aborting.\n");
		return reg;
	}

	switch (voltage) {
	case 0:
		break;
	case 5:
		reg &= ~MAX6650_CFG_V12;
		break;
	case 12:
		reg |= MAX6650_CFG_V12;
		break;
	default:
		FUNC0(dev, "illegal value for fan_voltage (%d)\n", voltage);
	}

	switch (prescale) {
	case 0:
		break;
	case 1:
		reg &= ~MAX6650_CFG_PRESCALER_MASK;
		break;
	case 2:
		reg = (reg & ~MAX6650_CFG_PRESCALER_MASK)
			 | MAX6650_CFG_PRESCALER_2;
		break;
	case  4:
		reg = (reg & ~MAX6650_CFG_PRESCALER_MASK)
			 | MAX6650_CFG_PRESCALER_4;
		break;
	case  8:
		reg = (reg & ~MAX6650_CFG_PRESCALER_MASK)
			 | MAX6650_CFG_PRESCALER_8;
		break;
	case 16:
		reg = (reg & ~MAX6650_CFG_PRESCALER_MASK)
			 | MAX6650_CFG_PRESCALER_16;
		break;
	default:
		FUNC0(dev, "illegal value for prescaler (%d)\n", prescale);
	}

	FUNC1(dev, "Fan voltage: %dV, prescaler: %d.\n",
		 (reg & MAX6650_CFG_V12) ? 12 : 5,
		 1 << (reg & MAX6650_CFG_PRESCALER_MASK));

	err = FUNC3(client, MAX6650_REG_CONFIG, reg);
	if (err) {
		FUNC0(dev, "Config write error, aborting.\n");
		return err;
	}
	data->config = reg;

	reg = FUNC2(client, MAX6650_REG_SPEED);
	if (reg < 0) {
		FUNC0(dev, "Failed to read speed register, aborting.\n");
		return reg;
	}
	data->speed = reg;

	reg = FUNC2(client, MAX6650_REG_DAC);
	if (reg < 0) {
		FUNC0(dev, "Failed to read DAC register, aborting.\n");
		return reg;
	}
	data->dac = reg;

	reg = FUNC2(client, MAX6650_REG_COUNT);
	if (reg < 0) {
		FUNC0(dev, "Failed to read count register, aborting.\n");
		return reg;
	}
	data->count = reg;

	reg = FUNC2(client, MAX6650_REG_ALARM_EN);
	if (reg < 0) {
		FUNC0(dev, "Failed to read alarm configuration, aborting.\n");
		return reg;
	}
	data->alarm_en = reg;

	if (!FUNC6(client->dev.of_node, "maxim,fan-target-rpm",
				  &target_rpm)) {
		FUNC5(data, target_rpm);
		FUNC4(data, MAX6650_CFG_MODE_CLOSED_LOOP);
	}

	return 0;
}