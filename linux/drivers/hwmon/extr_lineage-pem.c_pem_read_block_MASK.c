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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, u8 command, u8 *data,
			  int data_len)
{
	u8 block_buffer[I2C_SMBUS_BLOCK_MAX];
	int result;

	result = FUNC0(client, command, block_buffer);
	if (FUNC2(result < 0))
		goto abort;
	if (FUNC2(result == 0xff || result != data_len)) {
		result = -EIO;
		goto abort;
	}
	FUNC1(data, block_buffer, data_len);
	result = 0;
abort:
	return result;
}