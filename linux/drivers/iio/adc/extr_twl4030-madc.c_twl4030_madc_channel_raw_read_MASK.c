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
typedef  int u16 ;
struct twl4030_madc_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_MODULE_MADC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct twl4030_madc_data *madc, u8 reg)
{
	u16 val;
	int ret;
	/*
	 * For each ADC channel, we have MSB and LSB register pair. MSB address
	 * is always LSB address+1. reg parameter is the address of LSB register
	 */
	ret = FUNC1(TWL4030_MODULE_MADC, &val, reg);
	if (ret) {
		FUNC0(madc->dev, "unable to read register 0x%X\n", reg);
		return ret;
	}

	return (int)(val >> 6);
}