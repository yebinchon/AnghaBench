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
struct bmp280_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; scalar_t__ oversampling_press; scalar_t__ oversampling_temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMP280_FILTER_4X ; 
 int /*<<< orphan*/  BMP280_FILTER_MASK ; 
 int BMP280_MODE_MASK ; 
 int BMP280_MODE_NORMAL ; 
 int BMP280_OSRS_PRESS_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int BMP280_OSRS_TEMP_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  BMP280_REG_CONFIG ; 
 int /*<<< orphan*/  BMP280_REG_CTRL_MEAS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct bmp280_data *data)
{
	int ret;
	u8 osrs = FUNC1(data->oversampling_temp + 1) |
		  FUNC0(data->oversampling_press + 1);

	ret = FUNC4(data->regmap, BMP280_REG_CTRL_MEAS,
				 BMP280_OSRS_TEMP_MASK |
				 BMP280_OSRS_PRESS_MASK |
				 BMP280_MODE_MASK,
				 osrs | BMP280_MODE_NORMAL);
	if (ret < 0) {
		FUNC2(data->dev,
			"failed to write ctrl_meas register\n");
		return ret;
	}

	ret = FUNC3(data->regmap, BMP280_REG_CONFIG,
				 BMP280_FILTER_MASK,
				 BMP280_FILTER_4X);
	if (ret < 0) {
		FUNC2(data->dev,
			"failed to write config register\n");
		return ret;
	}

	return ret;
}