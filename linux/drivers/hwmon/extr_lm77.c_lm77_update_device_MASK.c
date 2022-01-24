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
struct lm77_data {int valid; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/ * temp; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LM77_REG_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct lm77_data* FUNC2 (struct device*) ; 
 scalar_t__ jiffies ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int t_num_temp ; 
 int /*<<< orphan*/ * temp_regs ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct lm77_data *FUNC7(struct device *dev)
{
	struct lm77_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	int i;

	FUNC4(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {
		FUNC1(&client->dev, "Starting lm77 update\n");
		for (i = 0; i < t_num_temp; i++) {
			data->temp[i] =
			  FUNC0(FUNC3(client,
							     temp_regs[i]));
		}
		data->alarms =
			FUNC3(client, LM77_REG_TEMP) & 0x0007;
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC5(&data->update_lock);

	return data;
}