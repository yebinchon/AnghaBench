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
struct i2c_msg {int flags; int addr; } ;
struct brcmstb_i2c_dev {int dummy; } ;

/* Variables and functions */
 int COND_NOSTOP ; 
 int COND_RESTART ; 
 int EREMOTEIO ; 
 int I2C_M_RD ; 
 int I2C_M_TEN ; 
 scalar_t__ FUNC0 (struct brcmstb_i2c_dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmstb_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmstb_i2c_dev*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chip_address ; 
 unsigned char FUNC3 (struct i2c_msg*) ; 

__attribute__((used)) static int FUNC4(struct brcmstb_i2c_dev *dev,
			       struct i2c_msg *msg)
{
	unsigned char addr;

	if (msg->flags & I2C_M_TEN) {
		/* First byte is 11110XX0 where XX is upper 2 bits */
		addr = 0xF0 | ((msg->addr & 0x300) >> 7);
		FUNC2(dev, addr, chip_address);

		/* Second byte is the remaining 8 bits */
		addr = msg->addr & 0xFF;
		if (FUNC0(dev, &addr, 0) < 0)
			return -EREMOTEIO;

		if (msg->flags & I2C_M_RD) {
			/* For read, send restart without stop condition */
			FUNC1(dev, COND_RESTART
						   | COND_NOSTOP);
			/* Then re-send the first byte with the read bit set */
			addr = 0xF0 | ((msg->addr & 0x300) >> 7) | 0x01;
			if (FUNC0(dev, &addr, 0) < 0)
				return -EREMOTEIO;

		}
	} else {
		addr = FUNC3(msg);

		FUNC2(dev, addr, chip_address);
	}

	return 0;
}