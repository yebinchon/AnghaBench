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
struct bmp280_data {int oversampling_press; int /*<<< orphan*/  regmap; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BMP180_REG_OUT_MSB ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct bmp280_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(struct bmp280_data *data, int *val)
{
	int ret;
	__be32 tmp = 0;
	u8 oss = data->oversampling_press;

	ret = FUNC2(data, FUNC0(oss));
	if (ret)
		return ret;

	ret = FUNC3(data->regmap, BMP180_REG_OUT_MSB, (u8 *)&tmp, 3);
	if (ret)
		return ret;

	*val = (FUNC1(tmp) >> 8) >> (8 - oss);

	return 0;
}