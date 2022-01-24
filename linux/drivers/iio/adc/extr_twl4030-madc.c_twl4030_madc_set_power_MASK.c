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
struct twl4030_madc_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_MADC_CTRL1 ; 
 int /*<<< orphan*/  TWL4030_MADC_MADCON ; 
 int /*<<< orphan*/  TWL4030_MODULE_MADC ; 
 int /*<<< orphan*/  TWL_MODULE_MAIN_CHARGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct twl4030_madc_data *madc, int on)
{
	u8 regval;
	int ret;

	ret = FUNC1(TWL_MODULE_MAIN_CHARGE,
			      &regval, TWL4030_MADC_CTRL1);
	if (ret) {
		FUNC0(madc->dev, "unable to read madc ctrl1 reg 0x%X\n",
			TWL4030_MADC_CTRL1);
		return ret;
	}
	if (on)
		regval |= TWL4030_MADC_MADCON;
	else
		regval &= ~TWL4030_MADC_MADCON;
	ret = FUNC2(TWL4030_MODULE_MADC, regval, TWL4030_MADC_CTRL1);
	if (ret) {
		FUNC0(madc->dev, "unable to write madc ctrl1 reg 0x%X\n",
			TWL4030_MADC_CTRL1);
		return ret;
	}

	return 0;
}