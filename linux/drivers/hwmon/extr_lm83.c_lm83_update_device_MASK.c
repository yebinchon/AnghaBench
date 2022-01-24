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
struct lm83_data {int valid; int* temp; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; scalar_t__ alarms; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LM83_REG_R_STATUS1 ; 
 int /*<<< orphan*/  LM83_REG_R_STATUS2 ; 
 int /*<<< orphan*/ * LM83_REG_R_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm83_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct lm83_data *FUNC6(struct device *dev)
{
	struct lm83_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;

	FUNC3(&data->update_lock);

	if (FUNC5(jiffies, data->last_updated + HZ * 2) || !data->valid) {
		int nr;

		FUNC0(&client->dev, "Updating lm83 data.\n");
		for (nr = 0; nr < 9; nr++) {
			data->temp[nr] =
			    FUNC2(client,
			    LM83_REG_R_TEMP[nr]);
		}
		data->alarms =
		    FUNC2(client, LM83_REG_R_STATUS1)
		    + (FUNC2(client, LM83_REG_R_STATUS2)
		    << 8);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC4(&data->update_lock);

	return data;
}