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
struct zforce_ts {char command_waiting; int command_result; int /*<<< orphan*/  command_mutex; int /*<<< orphan*/  command_done; int /*<<< orphan*/  access_mutex; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIME ; 
 int /*<<< orphan*/  WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct i2c_client*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct zforce_ts *ts, const char *buf, int len)
{
	struct i2c_client *client = ts->client;
	int ret;

	ret = FUNC4(&ts->command_mutex);
	if (!ret) {
		FUNC1(&client->dev, "already waiting for a command\n");
		return -EBUSY;
	}

	FUNC0(&client->dev, "sending %d bytes for command 0x%x\n",
		buf[1], buf[2]);

	ts->command_waiting = buf[2];

	FUNC3(&ts->access_mutex);
	ret = FUNC2(client, buf, len);
	FUNC5(&ts->access_mutex);
	if (ret < 0) {
		FUNC1(&client->dev, "i2c send data request error: %d\n", ret);
		goto unlock;
	}

	FUNC0(&client->dev, "waiting for result for command 0x%x\n", buf[2]);

	if (FUNC6(&ts->command_done, WAIT_TIMEOUT) == 0) {
		ret = -ETIME;
		goto unlock;
	}

	ret = ts->command_result;

unlock:
	FUNC5(&ts->command_mutex);
	return ret;
}