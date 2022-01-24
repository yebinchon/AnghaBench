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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct jz4780_i2c {TYPE_1__ adap; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  JZ4780_I2C_STA ; 
 unsigned short JZ4780_I2C_STA_MSTACT ; 
 unsigned short JZ4780_I2C_STA_TFE ; 
 int /*<<< orphan*/  JZ4780_I2C_TAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char,unsigned short) ; 
 unsigned short FUNC1 (struct jz4780_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_i2c*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct jz4780_i2c *i2c, unsigned char address)
{
	unsigned short regval;
	unsigned long loops = 5;

	do {
		regval = FUNC1(i2c, JZ4780_I2C_STA);
		if ((regval & JZ4780_I2C_STA_TFE) &&
		    !(regval & JZ4780_I2C_STA_MSTACT))
			break;

		FUNC3(5000, 15000);
	} while (--loops);

	if (loops) {
		FUNC2(i2c, JZ4780_I2C_TAR, address);
		return 0;
	}

	FUNC0(&i2c->adap.dev,
		"set device to address 0x%02x failed, STA=0x%04x\n",
		address, regval);

	return -ENXIO;
}