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
struct stm32f7_i2c_dev {scalar_t__ base; int /*<<< orphan*/  dev; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ STM32F7_I2C_CR1 ; 
 int /*<<< orphan*/  STM32F7_I2C_CR1_PE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct stm32f7_i2c_dev* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32f7_i2c_dev*) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *i2c_adap)
{
	struct stm32f7_i2c_dev *i2c_dev = FUNC1(i2c_adap);

	FUNC0(i2c_dev->dev, "Trying to recover bus\n");

	FUNC2(i2c_dev->base + STM32F7_I2C_CR1,
			     STM32F7_I2C_CR1_PE);

	FUNC3(i2c_dev);

	return 0;
}