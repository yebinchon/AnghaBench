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
struct zforce_ts {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_DEACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct zforce_ts*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct zforce_ts *ts)
{
	struct i2c_client *client = ts->client;
	int ret;

	FUNC0(&client->dev, "stopping device\n");

	/* Deactivates touch sensing and puts the device into sleep. */
	ret = FUNC2(ts, COMMAND_DEACTIVATE);
	if (ret != 0) {
		FUNC1(&client->dev, "could not deactivate device, %d\n",
			ret);
		return ret;
	}

	return 0;
}