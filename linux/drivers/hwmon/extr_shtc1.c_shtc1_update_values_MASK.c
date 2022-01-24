#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  blocking_io; } ;
struct shtc1_data {scalar_t__ nonblocking_wait_time; TYPE_1__ setup; int /*<<< orphan*/  command; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int SHTC1_CMD_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,char*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			       struct shtc1_data *data,
			       char *buf, int bufsize)
{
	int ret = FUNC2(client, data->command, SHTC1_CMD_LENGTH);
	if (ret != SHTC1_CMD_LENGTH) {
		FUNC0(&client->dev, "failed to send command: %d\n", ret);
		return ret < 0 ? ret : -EIO;
	}

	/*
	 * In blocking mode (clock stretching mode) the I2C bus
	 * is blocked for other traffic, thus the call to i2c_master_recv()
	 * will wait until the data is ready. For non blocking mode, we
	 * have to wait ourselves.
	 */
	if (!data->setup.blocking_io)
		FUNC3(data->nonblocking_wait_time,
			     data->nonblocking_wait_time + 1000);

	ret = FUNC1(client, buf, bufsize);
	if (ret != bufsize) {
		FUNC0(&client->dev, "failed to read values: %d\n", ret);
		return ret < 0 ? ret : -EIO;
	}

	return 0;
}