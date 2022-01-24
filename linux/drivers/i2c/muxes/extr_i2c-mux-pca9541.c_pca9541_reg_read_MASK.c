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
union i2c_smbus_data {int byte; } ;
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 

__attribute__((used)) static int FUNC1(struct i2c_client *client, u8 command)
{
	struct i2c_adapter *adap = client->adapter;
	union i2c_smbus_data data;
	int ret;

	ret = FUNC0(adap, client->addr, client->flags,
			       I2C_SMBUS_READ, command,
			       I2C_SMBUS_BYTE_DATA, &data);

	return ret ?: data.byte;
}