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
union i2c_smbus_data {int /*<<< orphan*/  byte; } ;
typedef  int /*<<< orphan*/  u8 ;
struct mlxcpld_mux_plat_data {int /*<<< orphan*/  sel_reg_addr; } ;
struct i2c_client {int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  dev; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_SMBUS_WRITE ; 
 int FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 struct mlxcpld_mux_plat_data* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adap,
				 struct i2c_client *client, u8 val)
{
	struct mlxcpld_mux_plat_data *pdata = FUNC1(&client->dev);
	union i2c_smbus_data data = { .byte = val };

	return FUNC0(adap, client->addr, client->flags,
				I2C_SMBUS_WRITE, pdata->sel_reg_addr,
				I2C_SMBUS_BYTE_DATA, &data);
}