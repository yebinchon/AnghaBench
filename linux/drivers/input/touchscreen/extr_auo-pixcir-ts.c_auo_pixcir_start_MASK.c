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
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct auo_pixcir_ts {int stopped; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUO_PIXCIR_POWER_ACTIVE ; 
 int FUNC0 (struct auo_pixcir_ts*,int) ; 
 int FUNC1 (struct auo_pixcir_ts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct auo_pixcir_ts *ts)
{
	struct i2c_client *client = ts->client;
	int ret;

	ret = FUNC1(ts, AUO_PIXCIR_POWER_ACTIVE);
	if (ret < 0) {
		FUNC2(&client->dev, "could not set power mode, %d\n",
			ret);
		return ret;
	}

	ts->stopped = false;
	FUNC5();
	FUNC4(client->irq);

	ret = FUNC0(ts, 1);
	if (ret < 0) {
		FUNC2(&client->dev, "could not enable interrupt, %d\n",
			ret);
		FUNC3(client->irq);
		return ret;
	}

	return 0;
}