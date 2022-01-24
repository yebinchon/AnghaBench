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
typedef  scalar_t__ u8 ;
struct bmp280_data {size_t oversampling_press; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  done; scalar_t__ use_eoc; } ;

/* Variables and functions */
 unsigned int BMP180_MEAS_SCO ; 
 scalar_t__ BMP180_MEAS_TEMP ; 
 int /*<<< orphan*/  BMP280_REG_CTRL_MEAS ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct bmp280_data *data, u8 ctrl_meas)
{
	int ret;
	const int conversion_time_max[] = { 4500, 7500, 13500, 25500 };
	unsigned int delay_us;
	unsigned int ctrl;

	if (data->use_eoc)
		FUNC1(&data->done);

	ret = FUNC4(data->regmap, BMP280_REG_CTRL_MEAS, ctrl_meas);
	if (ret)
		return ret;

	if (data->use_eoc) {
		/*
		 * If we have a completion interrupt, use it, wait up to
		 * 100ms. The longest conversion time listed is 76.5 ms for
		 * advanced resolution mode.
		 */
		ret = FUNC6(&data->done,
						  1 + FUNC2(100));
		if (!ret)
			FUNC0(data->dev, "timeout waiting for completion\n");
	} else {
		if (ctrl_meas == BMP180_MEAS_TEMP)
			delay_us = 4500;
		else
			delay_us =
				conversion_time_max[data->oversampling_press];

		FUNC5(delay_us, delay_us + 1000);
	}

	ret = FUNC3(data->regmap, BMP280_REG_CTRL_MEAS, &ctrl);
	if (ret)
		return ret;

	/* The value of this bit reset to "0" after conversion is complete */
	if (ctrl & BMP180_MEAS_SCO)
		return -EIO;

	return 0;
}