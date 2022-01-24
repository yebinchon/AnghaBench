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
struct max1619_data {int valid; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void** temp; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MAX1619_REG_R_CONFIG ; 
 int /*<<< orphan*/  MAX1619_REG_R_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct max1619_data* FUNC1 (struct device*) ; 
 void* FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * regs_read ; 
 int t_num_regs ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct max1619_data *FUNC6(struct device *dev)
{
	struct max1619_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int config, i;

	FUNC3(&data->update_lock);

	if (FUNC5(jiffies, data->last_updated + HZ * 2) || !data->valid) {
		FUNC0(&client->dev, "Updating max1619 data.\n");
		for (i = 0; i < t_num_regs; i++)
			data->temp[i] = FUNC2(client,
					regs_read[i]);
		data->alarms = FUNC2(client,
					MAX1619_REG_R_STATUS);
		/* If OVERT polarity is low, reverse alarm bit */
		config = FUNC2(client, MAX1619_REG_R_CONFIG);
		if (!(config & 0x20))
			data->alarms ^= 0x02;

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC4(&data->update_lock);

	return data;
}