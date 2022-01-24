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
typedef  int /*<<< orphan*/  u8 ;
struct bmp280_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
typedef  int s32 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  BMP280_REG_TEMP_MSB ; 
 int BMP280_TEMP_SKIPPED ; 
 int EIO ; 
 int IIO_VAL_INT ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct bmp280_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct bmp280_data *data,
			    int *val)
{
	int ret;
	__be32 tmp = 0;
	s32 adc_temp, comp_temp;

	ret = FUNC3(data->regmap, BMP280_REG_TEMP_MSB,
			       (u8 *) &tmp, 3);
	if (ret < 0) {
		FUNC2(data->dev, "failed to read temperature\n");
		return ret;
	}

	adc_temp = FUNC0(tmp) >> 12;
	if (adc_temp == BMP280_TEMP_SKIPPED) {
		/* reading was skipped */
		FUNC2(data->dev, "reading temperature skipped\n");
		return -EIO;
	}
	comp_temp = FUNC1(data, adc_temp);

	/*
	 * val might be NULL if we're called by the read_press routine,
	 * who only cares about the carry over t_fine value.
	 */
	if (val) {
		*val = comp_temp * 10;
		return IIO_VAL_INT;
	}

	return 0;
}