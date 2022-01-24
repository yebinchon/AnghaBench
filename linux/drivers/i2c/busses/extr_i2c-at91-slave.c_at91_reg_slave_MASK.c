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
struct i2c_client {int flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  adapter; } ;
struct at91_twi_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  smr; struct i2c_client* slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_TWI_IER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AT91_TWI_SVACC ; 
 int EAFNOSUPPORT ; 
 int EBUSY ; 
 int I2C_CLIENT_TEN ; 
 int /*<<< orphan*/  FUNC1 (struct at91_twi_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_twi_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct at91_twi_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *slave)
{
	struct at91_twi_dev *dev = FUNC4(slave->adapter);

	if (dev->slave)
		return -EBUSY;

	if (slave->flags & I2C_CLIENT_TEN)
		return -EAFNOSUPPORT;

	/* Make sure twi_clk doesn't get turned off! */
	FUNC5(dev->dev);

	dev->slave = slave;
	dev->smr = FUNC0(slave->addr);

	FUNC1(dev);
	FUNC2(dev, AT91_TWI_IER, AT91_TWI_SVACC);

	FUNC3(dev->dev, "entered slave mode (ADR=%d)\n", slave->addr);

	return 0;
}