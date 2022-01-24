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
struct input_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct zforce_ts* FUNC1 (struct input_dev*) ; 
 int FUNC2 (struct zforce_ts*) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev)
{
	struct zforce_ts *ts = FUNC1(dev);
	struct i2c_client *client = ts->client;
	int ret;

	ret = FUNC2(ts);
	if (ret)
		FUNC0(&client->dev, "stopping zforce failed\n");

	return;
}