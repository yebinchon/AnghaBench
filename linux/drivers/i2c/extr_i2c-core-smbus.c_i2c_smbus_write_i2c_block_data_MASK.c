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
union i2c_smbus_data {int /*<<< orphan*/ * block; } ;
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  adapter; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  I2C_SMBUS_I2C_BLOCK_DATA ; 
 int /*<<< orphan*/  I2C_SMBUS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

s32 FUNC2(const struct i2c_client *client, u8 command,
				   u8 length, const u8 *values)
{
	union i2c_smbus_data data;

	if (length > I2C_SMBUS_BLOCK_MAX)
		length = I2C_SMBUS_BLOCK_MAX;
	data.block[0] = length;
	FUNC1(data.block + 1, values, length);
	return FUNC0(client->adapter, client->addr, client->flags,
			      I2C_SMBUS_WRITE, command,
			      I2C_SMBUS_I2C_BLOCK_DATA, &data);
}