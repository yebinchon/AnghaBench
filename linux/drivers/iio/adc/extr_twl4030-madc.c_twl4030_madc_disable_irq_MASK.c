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
struct twl4030_madc_data {int /*<<< orphan*/  imr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_MODULE_MADC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct twl4030_madc_data *madc, u8 id)
{
	u8 val;
	int ret;

	ret = FUNC1(TWL4030_MODULE_MADC, &val, madc->imr);
	if (ret) {
		FUNC0(madc->dev, "unable to read imr register 0x%X\n",
			madc->imr);
		return ret;
	}
	val |= (1 << id);
	ret = FUNC2(TWL4030_MODULE_MADC, val, madc->imr);
	if (ret) {
		FUNC0(madc->dev,
			"unable to write imr register 0x%X\n", madc->imr);
		return ret;
	}

	return 0;
}