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
struct clk_hw {int dummy; } ;
struct clk_bcm2835_i2c {int /*<<< orphan*/  i2c_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_I2C_DEL ; 
 int /*<<< orphan*/  BCM2835_I2C_DIV ; 
 int BCM2835_I2C_FEDL_SHIFT ; 
 int BCM2835_I2C_REDL_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (int,unsigned int) ; 
 struct clk_bcm2835_i2c* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_bcm2835_i2c *div = FUNC3(hw);
	u32 redl, fedl;
	u32 divider = FUNC1(rate, parent_rate);

	if (divider == -EINVAL)
		return -EINVAL;

	FUNC0(div->i2c_dev, BCM2835_I2C_DIV, divider);

	/*
	 * Number of core clocks to wait after falling edge before
	 * outputting the next data bit.  Note that both FEDL and REDL
	 * can't be greater than CDIV/2.
	 */
	fedl = FUNC2(divider / 16, 1u);

	/*
	 * Number of core clocks to wait after rising edge before
	 * sampling the next incoming data bit.
	 */
	redl = FUNC2(divider / 4, 1u);

	FUNC0(div->i2c_dev, BCM2835_I2C_DEL,
			   (fedl << BCM2835_I2C_FEDL_SHIFT) |
			   (redl << BCM2835_I2C_REDL_SHIFT));
	return 0;
}