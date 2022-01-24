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
struct rcar_i2c_priv {struct i2c_client* slave; } ;
struct i2c_client {int flags; int addr; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EBUSY ; 
 int I2C_CLIENT_TEN ; 
 int /*<<< orphan*/  ICSAR ; 
 int /*<<< orphan*/  ICSCR ; 
 int /*<<< orphan*/  ICSIER ; 
 int /*<<< orphan*/  ICSSR ; 
 int SAR ; 
 int SDBS ; 
 int SIE ; 
 int SSR ; 
 struct rcar_i2c_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_i2c_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *slave)
{
	struct rcar_i2c_priv *priv = FUNC0(slave->adapter);

	if (priv->slave)
		return -EBUSY;

	if (slave->flags & I2C_CLIENT_TEN)
		return -EAFNOSUPPORT;

	/* Keep device active for slave address detection logic */
	FUNC1(FUNC2(priv));

	priv->slave = slave;
	FUNC3(priv, ICSAR, slave->addr);
	FUNC3(priv, ICSSR, 0);
	FUNC3(priv, ICSIER, SAR | SSR);
	FUNC3(priv, ICSCR, SIE | SDBS);

	return 0;
}