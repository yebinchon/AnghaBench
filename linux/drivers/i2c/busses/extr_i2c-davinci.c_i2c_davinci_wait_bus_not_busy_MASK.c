#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long timeout; } ;
struct davinci_i2c_dev {TYPE_1__ adapter; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DAVINCI_I2C_STR_BB ; 
 int /*<<< orphan*/  DAVINCI_I2C_STR_REG ; 
 int EIO ; 
 int FUNC0 (struct davinci_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct davinci_i2c_dev *dev)
{
	unsigned long timeout = jiffies + dev->adapter.timeout;

	do {
		if (!(FUNC0(dev, DAVINCI_I2C_STR_REG) & DAVINCI_I2C_STR_BB))
			return 0;
		FUNC3(1);
	} while (FUNC4(jiffies, timeout));

	FUNC1(dev->dev, "timeout waiting for bus ready\n");
	FUNC2(&dev->adapter);

	/*
	 * if bus is still "busy" here, it's most probably a HW problem like
	 * short-circuit
	 */
	if (FUNC0(dev, DAVINCI_I2C_STR_REG) & DAVINCI_I2C_STR_BB)
		return -EIO;

	return 0;
}