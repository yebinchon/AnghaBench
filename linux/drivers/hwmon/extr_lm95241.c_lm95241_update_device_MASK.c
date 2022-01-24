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
struct lm95241_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void* status; void** temp; int /*<<< orphan*/  interval; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM95241_REG_R_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct lm95241_data* FUNC2 (struct device*) ; 
 void* FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/ * lm95241_reg_address ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct lm95241_data *FUNC8(struct device *dev)
{
	struct lm95241_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;

	FUNC5(&data->update_lock);

	if (FUNC7(jiffies, data->last_updated
		       + FUNC4(data->interval)) ||
	    !data->valid) {
		int i;

		FUNC1(dev, "Updating lm95241 data.\n");
		for (i = 0; i < FUNC0(lm95241_reg_address); i++)
			data->temp[i]
			  = FUNC3(client,
						     lm95241_reg_address[i]);

		data->status = FUNC3(client,
							LM95241_REG_R_STATUS);
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC6(&data->update_lock);

	return data;
}