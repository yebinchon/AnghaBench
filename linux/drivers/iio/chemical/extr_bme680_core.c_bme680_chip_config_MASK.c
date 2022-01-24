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
struct device {int dummy; } ;
struct bme680_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  oversampling_press; int /*<<< orphan*/  oversampling_temp; int /*<<< orphan*/  oversampling_humid; } ;

/* Variables and functions */
 int BME680_FILTER_COEFF_VAL ; 
 int BME680_FILTER_MASK ; 
 int BME680_OSRS_HUMIDITY_MASK ; 
 int BME680_OSRS_PRESS_MASK ; 
 int BME680_OSRS_TEMP_MASK ; 
 int /*<<< orphan*/  BME680_REG_CONFIG ; 
 int /*<<< orphan*/  BME680_REG_CTRL_HUMIDITY ; 
 int /*<<< orphan*/  BME680_REG_CTRL_MEAS ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct bme680_data *data)
{
	struct device *dev = FUNC3(data->regmap);
	int ret;
	u8 osrs;

	osrs = FUNC0(
		BME680_OSRS_HUMIDITY_MASK,
		FUNC1(data->oversampling_humid));
	/*
	 * Highly recommended to set oversampling of humidity before
	 * temperature/pressure oversampling.
	 */
	ret = FUNC4(data->regmap, BME680_REG_CTRL_HUMIDITY,
				 BME680_OSRS_HUMIDITY_MASK, osrs);
	if (ret < 0) {
		FUNC2(dev, "failed to write ctrl_hum register\n");
		return ret;
	}

	/* IIR filter settings */
	ret = FUNC4(data->regmap, BME680_REG_CONFIG,
				 BME680_FILTER_MASK,
				 BME680_FILTER_COEFF_VAL);
	if (ret < 0) {
		FUNC2(dev, "failed to write config register\n");
		return ret;
	}

	osrs = FUNC0(BME680_OSRS_TEMP_MASK,
			  FUNC1(data->oversampling_temp)) |
	       FUNC0(BME680_OSRS_PRESS_MASK,
			  FUNC1(data->oversampling_press));
	ret = FUNC5(data->regmap, BME680_REG_CTRL_MEAS,
				BME680_OSRS_TEMP_MASK | BME680_OSRS_PRESS_MASK,
				osrs);
	if (ret < 0)
		FUNC2(dev, "failed to write ctrl_meas register\n");

	return ret;
}