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
struct mlxcpld_i2c_priv {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int MLXCPLD_I2C_POLL_TIME ; 
 int MLXCPLD_I2C_XFER_TO ; 
 int /*<<< orphan*/  FUNC0 (struct mlxcpld_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct mlxcpld_i2c_priv *priv)
{
	int timeout = 0;

	do {
		if (!FUNC0(priv))
			break;
		FUNC1(MLXCPLD_I2C_POLL_TIME / 2, MLXCPLD_I2C_POLL_TIME);
		timeout += MLXCPLD_I2C_POLL_TIME;
	} while (timeout <= MLXCPLD_I2C_XFER_TO);

	if (timeout > MLXCPLD_I2C_XFER_TO)
		return -ETIMEDOUT;

	return 0;
}