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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ds1621_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  conf; int /*<<< orphan*/ * temp; scalar_t__ update_interval; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DS1621_ALARM_TEMP_HIGH ; 
 int /*<<< orphan*/  DS1621_ALARM_TEMP_LOW ; 
 int /*<<< orphan*/  DS1621_REG_CONF ; 
 int /*<<< orphan*/ * DS1621_REG_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ds1621_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct ds1621_data *FUNC9(struct device *dev)
{
	struct ds1621_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	u8 new_conf;

	FUNC6(&data->update_lock);

	if (FUNC8(jiffies, data->last_updated + data->update_interval) ||
	    !data->valid) {
		int i;

		FUNC1(&client->dev, "Starting ds1621 update\n");

		data->conf = FUNC3(client, DS1621_REG_CONF);

		for (i = 0; i < FUNC0(data->temp); i++)
			data->temp[i] = FUNC4(client,
							 DS1621_REG_TEMP[i]);

		/* reset alarms if necessary */
		new_conf = data->conf;
		if (data->temp[0] > data->temp[1])	/* input > min */
			new_conf &= ~DS1621_ALARM_TEMP_LOW;
		if (data->temp[0] < data->temp[2])	/* input < max */
			new_conf &= ~DS1621_ALARM_TEMP_HIGH;
		if (data->conf != new_conf)
			FUNC5(client, DS1621_REG_CONF,
						  new_conf);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC7(&data->update_lock);

	return data;
}