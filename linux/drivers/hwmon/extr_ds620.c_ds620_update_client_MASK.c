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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ds620_data {int valid; int* temp; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/ * DS620_REG_TEMP ; 
 struct ds620_data* FUNC1 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ds620_data* FUNC3 (struct device*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct ds620_data *FUNC8(struct device *dev)
{
	struct ds620_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	struct ds620_data *ret = data;

	FUNC5(&data->update_lock);

	if (FUNC7(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {
		int i;
		int res;

		FUNC2(&client->dev, "Starting ds620 update\n");

		for (i = 0; i < FUNC0(data->temp); i++) {
			res = FUNC4(client,
							  DS620_REG_TEMP[i]);
			if (res < 0) {
				ret = FUNC1(res);
				goto abort;
			}

			data->temp[i] = res;
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}
abort:
	FUNC6(&data->update_lock);

	return ret;
}