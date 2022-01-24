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
typedef  int u8 ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;
typedef  int s32 ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client const*,int) ; 
 int FUNC2 (struct i2c_client const*,int,int,int*) ; 
 int FUNC3 (struct i2c_client const*,int) ; 

s32 FUNC4(const struct i2c_client *client,
					      u8 command, u8 length, u8 *values)
{
	u8 i = 0;
	int status;

	if (length > I2C_SMBUS_BLOCK_MAX)
		length = I2C_SMBUS_BLOCK_MAX;

	if (FUNC0(client->adapter, I2C_FUNC_SMBUS_READ_I2C_BLOCK))
		return FUNC2(client, command, length, values);

	if (!FUNC0(client->adapter, I2C_FUNC_SMBUS_READ_BYTE_DATA))
		return -EOPNOTSUPP;

	if (FUNC0(client->adapter, I2C_FUNC_SMBUS_READ_WORD_DATA)) {
		while ((i + 2) <= length) {
			status = FUNC3(client, command + i);
			if (status < 0)
				return status;
			values[i] = status & 0xff;
			values[i + 1] = status >> 8;
			i += 2;
		}
	}

	while (i < length) {
		status = FUNC1(client, command + i);
		if (status < 0)
			return status;
		values[i] = status;
		i++;
	}

	return i;
}