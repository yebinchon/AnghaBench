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
typedef  int u32 ;
struct sh_mobile_i2c_data {int clks_per_count; scalar_t__ bus_speed; int /*<<< orphan*/  icch; int /*<<< orphan*/  iccl; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FAST_MODE ; 
 scalar_t__ STANDARD_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC2 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int,int) ; 

__attribute__((used)) static int FUNC5(struct sh_mobile_i2c_data *pd)
{
	unsigned long i2c_clk_khz;
	u32 tHIGH, tLOW, tf;

	i2c_clk_khz = FUNC0(pd->clk) / 1000 / pd->clks_per_count;

	if (pd->bus_speed == STANDARD_MODE) {
		tLOW	= 47;	/* tLOW = 4.7 us */
		tHIGH	= 40;	/* tHD;STA = tHIGH = 4.0 us */
		tf	= 3;	/* tf = 0.3 us */
	} else if (pd->bus_speed == FAST_MODE) {
		tLOW	= 13;	/* tLOW = 1.3 us */
		tHIGH	= 6;	/* tHD;STA = tHIGH = 0.6 us */
		tf	= 3;	/* tf = 0.3 us */
	} else {
		FUNC1(pd->dev, "unrecognized bus speed %lu Hz\n",
			pd->bus_speed);
		return -EINVAL;
	}

	pd->iccl = FUNC4(i2c_clk_khz, tLOW, tf);
	pd->icch = FUNC3(i2c_clk_khz, tHIGH, tf);

	return FUNC2(pd);
}