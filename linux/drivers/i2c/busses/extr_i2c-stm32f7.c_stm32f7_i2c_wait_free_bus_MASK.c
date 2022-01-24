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
struct stm32f7_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  adap; scalar_t__ base; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ STM32F7_I2C_ISR ; 
 int STM32F7_I2C_ISR_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__,int,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct stm32f7_i2c_dev *i2c_dev)
{
	u32 status;
	int ret;

	ret = FUNC2(i2c_dev->base + STM32F7_I2C_ISR,
					 status,
					 !(status & STM32F7_I2C_ISR_BUSY),
					 10, 1000);
	if (!ret)
		return 0;

	FUNC1(i2c_dev->dev, "bus busy\n");

	ret = FUNC3(&i2c_dev->adap);
	if (ret) {
		FUNC0(i2c_dev->dev, "Failed to recover the bus (%d)\n", ret);
		return ret;
	}

	return -EBUSY;
}