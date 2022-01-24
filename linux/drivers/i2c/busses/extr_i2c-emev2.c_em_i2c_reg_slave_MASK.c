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
struct i2c_client {int flags; int addr; int /*<<< orphan*/  adapter; } ;
struct em_i2c_device {scalar_t__ base; struct i2c_client* slave; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EBUSY ; 
 int I2C_CLIENT_TEN ; 
 scalar_t__ I2C_OFS_SVA0 ; 
 struct em_i2c_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *slave)
{
	struct em_i2c_device *priv = FUNC0(slave->adapter);

	if (priv->slave)
		return -EBUSY;

	if (slave->flags & I2C_CLIENT_TEN)
		return -EAFNOSUPPORT;

	priv->slave = slave;

	/* Set slave address */
	FUNC1(slave->addr << 1, priv->base + I2C_OFS_SVA0);

	return 0;
}