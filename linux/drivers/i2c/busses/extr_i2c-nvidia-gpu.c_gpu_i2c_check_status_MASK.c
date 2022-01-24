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
struct gpu_i2c_dev {scalar_t__ regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int ETIMEDOUT ; 
 scalar_t__ I2C_MST_CNTL ; 
 int I2C_MST_CNTL_CYCLE_TRIGGER ; 
 int I2C_MST_CNTL_STATUS ; 
 int I2C_MST_CNTL_STATUS_BUS_BUSY ; 
#define  I2C_MST_CNTL_STATUS_NO_ACK 130 
#define  I2C_MST_CNTL_STATUS_OKAY 129 
#define  I2C_MST_CNTL_STATUS_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct gpu_i2c_dev *i2cd)
{
	unsigned long target = jiffies + FUNC1(1000);
	u32 val;

	do {
		val = FUNC2(i2cd->regs + I2C_MST_CNTL);
		if (!(val & I2C_MST_CNTL_CYCLE_TRIGGER))
			break;
		if ((val & I2C_MST_CNTL_STATUS) !=
				I2C_MST_CNTL_STATUS_BUS_BUSY)
			break;
		FUNC5(500, 600);
	} while (FUNC3(target));

	if (FUNC4(target)) {
		FUNC0(i2cd->dev, "i2c timeout error %x\n", val);
		return -ETIMEDOUT;
	}

	val = FUNC2(i2cd->regs + I2C_MST_CNTL);
	switch (val & I2C_MST_CNTL_STATUS) {
	case I2C_MST_CNTL_STATUS_OKAY:
		return 0;
	case I2C_MST_CNTL_STATUS_NO_ACK:
		return -ENXIO;
	case I2C_MST_CNTL_STATUS_TIMEOUT:
		return -ETIMEDOUT;
	default:
		return 0;
	}
}