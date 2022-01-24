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
typedef  int /*<<< orphan*/  val ;
typedef  int u16 ;
struct max44000_data {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int MAX44000_ALSDATA_OVERFLOW ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MAX44000_REG_ALS_DATA_HI ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct max44000_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct max44000_data *data)
{
	u16 regval;
	__be16 val;
	int alstim, ret;

	ret = FUNC3(data->regmap, MAX44000_REG_ALS_DATA_HI,
			       &val, sizeof(val));
	if (ret < 0)
		return ret;
	alstim = ret = FUNC2(data);
	if (ret < 0)
		return ret;

	regval = FUNC1(val);

	/*
	 * Overflow is explained on datasheet page 17.
	 *
	 * It's a warning that either the G or IR channel has become saturated
	 * and that the value in the register is likely incorrect.
	 *
	 * The recommendation is to change the scale (ALSPGA).
	 * The driver just returns the max representable value.
	 */
	if (regval & MAX44000_ALSDATA_OVERFLOW)
		return 0x3FFF;

	return regval << FUNC0(alstim);
}