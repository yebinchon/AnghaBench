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

/* Variables and functions */
 int ENODEV ; 
 unsigned int WB_SIO_CHIP_ID_W83627UHG ; 
 unsigned int WB_SIO_CHIP_ID_W83627UHG_MASK ; 
 int /*<<< orphan*/  WB_SIO_REG_CHIP_LSB ; 
 int /*<<< orphan*/  WB_SIO_REG_CHIP_MSB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned int) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned int FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(unsigned long base)
{
	int ret;
	unsigned int chip;

	ret = FUNC2(base);
	if (ret)
		return ret;

	chip = FUNC4(base, WB_SIO_REG_CHIP_MSB) << 8;
	chip |= FUNC4(base, WB_SIO_REG_CHIP_LSB);

	FUNC1("chip ID at %lx is %.4x\n", base, chip);

	if ((chip & WB_SIO_CHIP_ID_W83627UHG_MASK) !=
	    WB_SIO_CHIP_ID_W83627UHG) {
		FUNC0("not an our chip\n");
		ret = -ENODEV;
	}

	FUNC3(base);

	return ret;
}