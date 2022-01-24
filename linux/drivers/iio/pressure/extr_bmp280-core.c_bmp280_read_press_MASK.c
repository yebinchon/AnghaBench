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
typedef  int u32 ;
struct bmp280_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
typedef  int s32 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int BMP280_PRESS_SKIPPED ; 
 int /*<<< orphan*/  BMP280_REG_PRESS_MSB ; 
 int EIO ; 
 int IIO_VAL_FRACTIONAL ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct bmp280_data*,int) ; 
 int FUNC2 (struct bmp280_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct bmp280_data *data,
			     int *val, int *val2)
{
	int ret;
	__be32 tmp = 0;
	s32 adc_press;
	u32 comp_press;

	/* Read and compensate temperature so we get a reading of t_fine. */
	ret = FUNC2(data, NULL);
	if (ret < 0)
		return ret;

	ret = FUNC4(data->regmap, BMP280_REG_PRESS_MSB,
			       (u8 *) &tmp, 3);
	if (ret < 0) {
		FUNC3(data->dev, "failed to read pressure\n");
		return ret;
	}

	adc_press = FUNC0(tmp) >> 12;
	if (adc_press == BMP280_PRESS_SKIPPED) {
		/* reading was skipped */
		FUNC3(data->dev, "reading pressure skipped\n");
		return -EIO;
	}
	comp_press = FUNC1(data, adc_press);

	*val = comp_press;
	*val2 = 256000;

	return IIO_VAL_FRACTIONAL;
}