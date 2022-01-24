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
struct clk_hw {int dummy; } ;
struct clk_bcm2835_i2c {int /*<<< orphan*/  i2c_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_I2C_DIV ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_bcm2835_i2c* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						unsigned long parent_rate)
{
	struct clk_bcm2835_i2c *div = FUNC2(hw);
	u32 divider = FUNC1(div->i2c_dev, BCM2835_I2C_DIV);

	return FUNC0(parent_rate, divider);
}