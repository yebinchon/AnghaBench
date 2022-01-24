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
struct exynos5_i2c {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ HSI2C_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct exynos5_i2c *i2c)
{
	FUNC1(FUNC0(i2c->regs + HSI2C_INT_STATUS),
				i2c->regs + HSI2C_INT_STATUS);
}