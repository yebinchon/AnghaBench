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
struct device {int dummy; } ;
struct bme680_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BME680_MODE_FORCED ; 
 int /*<<< orphan*/  BME680_MODE_MASK ; 
 int /*<<< orphan*/  BME680_MODE_SLEEP ; 
 int /*<<< orphan*/  BME680_REG_CTRL_MEAS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bme680_data *data, bool mode)
{
	struct device *dev = FUNC1(data->regmap);
	int ret;

	if (mode) {
		ret = FUNC2(data->regmap, BME680_REG_CTRL_MEAS,
					BME680_MODE_MASK, BME680_MODE_FORCED);
		if (ret < 0)
			FUNC0(dev, "failed to set forced mode\n");

	} else {
		ret = FUNC2(data->regmap, BME680_REG_CTRL_MEAS,
					BME680_MODE_MASK, BME680_MODE_SLEEP);
		if (ret < 0)
			FUNC0(dev, "failed to set sleep mode\n");

	}

	return ret;
}