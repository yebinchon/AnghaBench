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
struct exynos5_i2c {scalar_t__ op_clock; } ;

/* Variables and functions */
 scalar_t__ HSI2C_HS_TX_CLOCK ; 
 int FUNC0 (struct exynos5_i2c*,int) ; 

__attribute__((used)) static int FUNC1(struct exynos5_i2c *i2c)
{
	/* always set Fast Speed timings */
	int ret = FUNC0(i2c, false);

	if (ret < 0 || i2c->op_clock < HSI2C_HS_TX_CLOCK)
		return ret;

	return FUNC0(i2c, true);
}