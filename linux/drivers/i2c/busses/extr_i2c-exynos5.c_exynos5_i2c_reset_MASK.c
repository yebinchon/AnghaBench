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
typedef  int /*<<< orphan*/  u32 ;
struct exynos5_i2c {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ HSI2C_CTL ; 
 int /*<<< orphan*/  HSI2C_SW_RST ; 
 int /*<<< orphan*/  FUNC0 (struct exynos5_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos5_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct exynos5_i2c *i2c)
{
	u32 i2c_ctl;

	/* Set and clear the bit for reset */
	i2c_ctl = FUNC2(i2c->regs + HSI2C_CTL);
	i2c_ctl |= HSI2C_SW_RST;
	FUNC3(i2c_ctl, i2c->regs + HSI2C_CTL);

	i2c_ctl = FUNC2(i2c->regs + HSI2C_CTL);
	i2c_ctl &= ~HSI2C_SW_RST;
	FUNC3(i2c_ctl, i2c->regs + HSI2C_CTL);

	/* We don't expect calculations to fail during the run */
	FUNC0(i2c);
	/* Initialize the configure registers */
	FUNC1(i2c);
}