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
typedef  int u8 ;
struct smsc47m192_data {int valid; int* in; int* in_min; int* in_max; int* temp; int* temp_max; int* temp_min; int* temp_offset; int vid; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SMSC47M192_REG_ALARM1 ; 
 int /*<<< orphan*/  SMSC47M192_REG_ALARM2 ; 
 int /*<<< orphan*/  SMSC47M192_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SMSC47M192_REG_SFR ; 
 int /*<<< orphan*/ * SMSC47M192_REG_TEMP ; 
 int /*<<< orphan*/ * SMSC47M192_REG_TEMP_MAX ; 
 int /*<<< orphan*/ * SMSC47M192_REG_TEMP_MIN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SMSC47M192_REG_VID ; 
 int /*<<< orphan*/  SMSC47M192_REG_VID4 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct smsc47m192_data* FUNC5 (struct device*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct smsc47m192_data *FUNC10(struct device *dev)
{
	struct smsc47m192_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	int i, config;

	FUNC7(&data->update_lock);

	if (FUNC9(jiffies, data->last_updated + HZ + HZ / 2)
	 || !data->valid) {
		u8 sfr = FUNC6(client, SMSC47M192_REG_SFR);

		FUNC4(&client->dev, "Starting smsc47m192 update\n");

		for (i = 0; i <= 7; i++) {
			data->in[i] = FUNC6(client,
						FUNC0(i));
			data->in_min[i] = FUNC6(client,
						FUNC2(i));
			data->in_max[i] = FUNC6(client,
						FUNC1(i));
		}
		for (i = 0; i < 3; i++) {
			data->temp[i] = FUNC6(client,
						SMSC47M192_REG_TEMP[i]);
			data->temp_max[i] = FUNC6(client,
						SMSC47M192_REG_TEMP_MAX[i]);
			data->temp_min[i] = FUNC6(client,
						SMSC47M192_REG_TEMP_MIN[i]);
		}
		for (i = 1; i < 3; i++)
			data->temp_offset[i] = FUNC6(client,
						FUNC3(i));
		/*
		 * first offset is temp_offset[0] if SFR bit 4 is set,
		 * temp_offset[1] otherwise
		 */
		if (sfr & 0x10) {
			data->temp_offset[0] = data->temp_offset[1];
			data->temp_offset[1] = 0;
		} else
			data->temp_offset[0] = 0;

		data->vid = FUNC6(client, SMSC47M192_REG_VID)
			    & 0x0f;
		config = FUNC6(client,
						  SMSC47M192_REG_CONFIG);
		if (config & 0x20)
			data->vid |= (FUNC6(client,
					SMSC47M192_REG_VID4) & 0x01) << 4;
		data->alarms = FUNC6(client,
						SMSC47M192_REG_ALARM1) |
			       (FUNC6(client,
						SMSC47M192_REG_ALARM2) << 8);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC8(&data->update_lock);

	return data;
}