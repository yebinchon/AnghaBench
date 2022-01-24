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
struct stm32f7_i2c_dev {int /*<<< orphan*/  dev; struct i2c_client** slave; } ;
struct i2c_client {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int STM32F7_I2C_MAX_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct stm32f7_i2c_dev *i2c_dev,
				    struct i2c_client *slave, int *id)
{
	int i;

	for (i = 0; i < STM32F7_I2C_MAX_SLAVE; i++) {
		if (i2c_dev->slave[i] == slave) {
			*id = i;
			return 0;
		}
	}

	FUNC0(i2c_dev->dev, "Slave 0x%x not registered\n", slave->addr);

	return -ENODEV;
}