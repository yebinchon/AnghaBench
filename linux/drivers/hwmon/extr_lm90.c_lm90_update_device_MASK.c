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
struct lm90_data {int valid; unsigned long last_updated; int* temp8; int* temp11; int alarms; scalar_t__ kind; int config_orig; int alert_alarms; int config; scalar_t__ reg_local_ext; int /*<<< orphan*/  update_interval; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM90_REG_R_LOCAL_HIGH ; 
 int /*<<< orphan*/  LM90_REG_R_LOCAL_LOW ; 
 int /*<<< orphan*/  LM90_REG_R_LOCAL_TEMP ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_TEMPH ; 
 scalar_t__ LM90_REG_R_REMOTE_TEMPL ; 
 int /*<<< orphan*/  LM90_REG_R_STATUS ; 
 size_t LOCAL_HIGH ; 
 size_t LOCAL_LOW ; 
 size_t LOCAL_TEMP ; 
 int /*<<< orphan*/  MAX6696_REG_R_STATUS2 ; 
 size_t REMOTE2_TEMP ; 
 size_t REMOTE_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm90_data* FUNC1 (struct device*) ; 
 unsigned long jiffies ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lm90_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lm90_data*,int) ; 
 int FUNC6 (struct device*) ; 
 scalar_t__ max6696 ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct lm90_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	unsigned long next_update;
	int val;

	if (!data->valid) {
		val = FUNC6(dev);
		if (val < 0)
			return val;
	}

	next_update = data->last_updated +
		      FUNC7(data->update_interval);
	if (FUNC8(jiffies, next_update) || !data->valid) {
		FUNC0(&client->dev, "Updating lm90 data.\n");

		data->valid = false;

		val = FUNC3(client, LM90_REG_R_LOCAL_LOW);
		if (val < 0)
			return val;
		data->temp8[LOCAL_LOW] = val;

		val = FUNC3(client, LM90_REG_R_LOCAL_HIGH);
		if (val < 0)
			return val;
		data->temp8[LOCAL_HIGH] = val;

		if (data->reg_local_ext) {
			val = FUNC2(client, LM90_REG_R_LOCAL_TEMP,
					  data->reg_local_ext);
			if (val < 0)
				return val;
			data->temp11[LOCAL_TEMP] = val;
		} else {
			val = FUNC3(client, LM90_REG_R_LOCAL_TEMP);
			if (val < 0)
				return val;
			data->temp11[LOCAL_TEMP] = val << 8;
		}
		val = FUNC2(client, LM90_REG_R_REMOTE_TEMPH,
				  LM90_REG_R_REMOTE_TEMPL);
		if (val < 0)
			return val;
		data->temp11[REMOTE_TEMP] = val;

		val = FUNC3(client, LM90_REG_R_STATUS);
		if (val < 0)
			return val;
		data->alarms = val;	/* lower 8 bit of alarms */

		if (data->kind == max6696) {
			val = FUNC4(data, 1);
			if (val < 0)
				return val;

			val = FUNC2(client, LM90_REG_R_REMOTE_TEMPH,
					  LM90_REG_R_REMOTE_TEMPL);
			if (val < 0) {
				FUNC4(data, 0);
				return val;
			}
			data->temp11[REMOTE2_TEMP] = val;

			FUNC4(data, 0);

			val = FUNC3(client, MAX6696_REG_R_STATUS2);
			if (val < 0)
				return val;
			data->alarms |= val << 8;
		}

		/*
		 * Re-enable ALERT# output if it was originally enabled and
		 * relevant alarms are all clear
		 */
		if (!(data->config_orig & 0x80) &&
		    !(data->alarms & data->alert_alarms)) {
			if (data->config & 0x80) {
				FUNC0(&client->dev, "Re-enabling ALERT#\n");
				FUNC5(data, data->config & ~0x80);
			}
		}

		data->last_updated = jiffies;
		data->valid = true;
	}

	return 0;
}