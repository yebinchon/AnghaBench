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
struct stm32f4_i2c_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ STM32F4_I2C_CR1 ; 
 int /*<<< orphan*/  STM32F4_I2C_CR1_PE ; 
 int FUNC0 (struct stm32f4_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32f4_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32f4_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct stm32f4_i2c_dev *i2c_dev)
{
	int ret;

	ret = FUNC0(i2c_dev);
	if (ret)
		return ret;

	FUNC1(i2c_dev);

	FUNC2(i2c_dev);

	/* Enable I2C */
	FUNC3(STM32F4_I2C_CR1_PE, i2c_dev->base + STM32F4_I2C_CR1);

	return 0;
}