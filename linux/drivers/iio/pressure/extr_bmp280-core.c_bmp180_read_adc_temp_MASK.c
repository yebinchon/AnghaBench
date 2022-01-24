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
struct bmp280_data {int /*<<< orphan*/  regmap; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  BMP180_MEAS_TEMP ; 
 int /*<<< orphan*/  BMP180_REG_OUT_MSB ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct bmp280_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct bmp280_data *data, int *val)
{
	int ret;
	__be16 tmp = 0;

	ret = FUNC1(data, BMP180_MEAS_TEMP);
	if (ret)
		return ret;

	ret = FUNC2(data->regmap, BMP180_REG_OUT_MSB, (u8 *)&tmp, 2);
	if (ret)
		return ret;

	*val = FUNC0(tmp);

	return 0;
}