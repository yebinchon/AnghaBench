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
struct owl_i2c_dev {int bus_freq; scalar_t__ base; int /*<<< orphan*/  clk_rate; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ OWL_I2C_REG_CLKDIV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct owl_i2c_dev *i2c_dev)
{
	unsigned int val;

	val = FUNC0(i2c_dev->clk_rate, i2c_dev->bus_freq * 16);

	/* Set clock divider factor */
	FUNC2(FUNC1(val), i2c_dev->base + OWL_I2C_REG_CLKDIV);
}