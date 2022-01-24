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
struct zforce_ts_platdata {int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; } ;
struct zforce_ts {struct zforce_ts_platdata* pdata; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_DATAREQUEST ; 
 int /*<<< orphan*/  COMMAND_DEACTIVATE ; 
 int /*<<< orphan*/  COMMAND_INITIALIZE ; 
 int /*<<< orphan*/  SETCONFIG_DUALTOUCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct zforce_ts*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct zforce_ts*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct zforce_ts*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct zforce_ts*,int,int,int) ; 
 int FUNC7 (struct zforce_ts*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct zforce_ts *ts)
{
	struct i2c_client *client = ts->client;
	const struct zforce_ts_platdata *pdata = ts->pdata;
	int ret;

	FUNC0(&client->dev, "starting device\n");

	ret = FUNC4(ts, COMMAND_INITIALIZE);
	if (ret) {
		FUNC1(&client->dev, "Unable to initialize, %d\n", ret);
		return ret;
	}

	ret = FUNC5(ts, pdata->x_max, pdata->y_max);
	if (ret) {
		FUNC1(&client->dev, "Unable to set resolution, %d\n", ret);
		goto error;
	}

	ret = FUNC6(ts, 10, 50, 50);
	if (ret) {
		FUNC1(&client->dev, "Unable to set scan frequency, %d\n",
			ret);
		goto error;
	}

	ret = FUNC7(ts, SETCONFIG_DUALTOUCH);
	if (ret) {
		FUNC1(&client->dev, "Unable to set config\n");
		goto error;
	}

	/* start sending touch events */
	ret = FUNC3(ts, COMMAND_DATAREQUEST);
	if (ret) {
		FUNC1(&client->dev, "Unable to request data\n");
		goto error;
	}

	/*
	 * Per NN, initial cal. take max. of 200msec.
	 * Allow time to complete this calibration
	 */
	FUNC2(200);

	return 0;

error:
	FUNC4(ts, COMMAND_DEACTIVATE);
	return ret;
}