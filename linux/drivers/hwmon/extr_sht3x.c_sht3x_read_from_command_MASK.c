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
typedef  scalar_t__ u32 ;
struct sht3x_data {int /*<<< orphan*/  i2c_lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int SHT3X_CMD_LENGTH ; 
 int FUNC0 (struct i2c_client*,char*,int) ; 
 int FUNC1 (struct i2c_client*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
				   struct sht3x_data *data,
				   const char *command,
				   char *buf, int length, u32 wait_time)
{
	int ret;

	FUNC2(&data->i2c_lock);
	ret = FUNC1(client, command, SHT3X_CMD_LENGTH);

	if (ret != SHT3X_CMD_LENGTH) {
		ret = ret < 0 ? ret : -EIO;
		goto out;
	}

	if (wait_time)
		FUNC4(wait_time, wait_time + 1000);

	ret = FUNC0(client, buf, length);
	if (ret != length) {
		ret = ret < 0 ? ret : -EIO;
		goto out;
	}

	ret = 0;
out:
	FUNC3(&data->i2c_lock);
	return ret;
}