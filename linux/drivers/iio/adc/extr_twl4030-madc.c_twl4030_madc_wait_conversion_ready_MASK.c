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
struct twl4030_madc_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int TWL4030_MADC_BUSY ; 
 int TWL4030_MADC_EOC_SW ; 
 int /*<<< orphan*/  TWL4030_MODULE_MADC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct twl4030_madc_data *madc,
					      unsigned int timeout_ms,
					      u8 status_reg)
{
	unsigned long timeout;
	int ret;

	timeout = jiffies + FUNC1(timeout_ms);
	do {
		u8 reg;

		ret = FUNC3(TWL4030_MODULE_MADC, &reg, status_reg);
		if (ret) {
			FUNC0(madc->dev,
				"unable to read status register 0x%X\n",
				status_reg);
			return ret;
		}
		if (!(reg & TWL4030_MADC_BUSY) && (reg & TWL4030_MADC_EOC_SW))
			return 0;
		FUNC4(500, 2000);
	} while (!FUNC2(jiffies, timeout));
	FUNC0(madc->dev, "conversion timeout!\n");

	return -EAGAIN;
}