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
typedef  scalar_t__ u32 ;
struct stm32f4_i2c_dev {scalar_t__ speed; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  parent_rate; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HZ_TO_MHZ ; 
 scalar_t__ STM32F4_I2C_CR2 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ STM32F4_I2C_MAX_FREQ ; 
 scalar_t__ STM32F4_I2C_MIN_FAST_FREQ ; 
 scalar_t__ STM32F4_I2C_MIN_STANDARD_FREQ ; 
 scalar_t__ STM32_I2C_SPEED_STANDARD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct stm32f4_i2c_dev *i2c_dev)
{
	u32 freq;
	u32 cr2 = 0;

	i2c_dev->parent_rate = FUNC2(i2c_dev->clk);
	freq = FUNC0(i2c_dev->parent_rate, HZ_TO_MHZ);

	if (i2c_dev->speed == STM32_I2C_SPEED_STANDARD) {
		/*
		 * To reach 100 kHz, the parent clk frequency should be between
		 * a minimum value of 2 MHz and a maximum value of 46 MHz due
		 * to hardware limitation
		 */
		if (freq < STM32F4_I2C_MIN_STANDARD_FREQ ||
		    freq > STM32F4_I2C_MAX_FREQ) {
			FUNC3(i2c_dev->dev,
				"bad parent clk freq for standard mode\n");
			return -EINVAL;
		}
	} else {
		/*
		 * To be as close as possible to 400 kHz, the parent clk
		 * frequency should be between a minimum value of 6 MHz and a
		 * maximum value of 46 MHz due to hardware limitation
		 */
		if (freq < STM32F4_I2C_MIN_FAST_FREQ ||
		    freq > STM32F4_I2C_MAX_FREQ) {
			FUNC3(i2c_dev->dev,
				"bad parent clk freq for fast mode\n");
			return -EINVAL;
		}
	}

	cr2 |= FUNC1(freq);
	FUNC4(cr2, i2c_dev->base + STM32F4_I2C_CR2);

	return 0;
}