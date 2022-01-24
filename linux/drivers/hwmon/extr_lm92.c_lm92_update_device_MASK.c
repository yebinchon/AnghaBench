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
struct lm92_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/ * temp; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm92_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * regs ; 
 int t_num_regs ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct lm92_data *FUNC6(struct device *dev)
{
	struct lm92_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int i;

	FUNC3(&data->update_lock);

	if (FUNC5(jiffies, data->last_updated + HZ) ||
	    !data->valid) {
		FUNC0(&client->dev, "Updating lm92 data\n");
		for (i = 0; i < t_num_regs; i++) {
			data->temp[i] =
				FUNC2(client, regs[i]);
		}
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC4(&data->update_lock);

	return data;
}