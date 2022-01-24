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
struct tmp401_data {unsigned long last_updated; int valid; scalar_t__ kind; int* status; int config; int temp_crit_hyst; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  update_interval; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 struct tmp401_data* FUNC1 (int) ; 
 int /*<<< orphan*/  TMP401_CONFIG_READ ; 
 int /*<<< orphan*/  TMP401_STATUS ; 
 int TMP401_STATUS_LOCAL_CRIT ; 
 int TMP401_STATUS_LOCAL_HIGH ; 
 int TMP401_STATUS_LOCAL_LOW ; 
 int TMP401_STATUS_REMOTE_CRIT ; 
 int TMP401_STATUS_REMOTE_HIGH ; 
 int TMP401_STATUS_REMOTE_LOW ; 
 int TMP401_STATUS_REMOTE_OPEN ; 
 int /*<<< orphan*/  TMP401_TEMP_CRIT_HYST ; 
 int /*<<< orphan*/ * TMP432_STATUS_REG ; 
 struct tmp401_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int FUNC8 (struct i2c_client*,struct tmp401_data*) ; 
 scalar_t__ tmp432 ; 

__attribute__((used)) static struct tmp401_data *FUNC9(struct device *dev)
{
	struct tmp401_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	struct tmp401_data *ret = data;
	int i, val;
	unsigned long next_update;

	FUNC5(&data->update_lock);

	next_update = data->last_updated +
		      FUNC4(data->update_interval);
	if (FUNC7(jiffies, next_update) || !data->valid) {
		if (data->kind != tmp432) {
			/*
			 * The driver uses the TMP432 status format internally.
			 * Convert status to TMP432 format for other chips.
			 */
			val = FUNC3(client, TMP401_STATUS);
			if (val < 0) {
				ret = FUNC1(val);
				goto abort;
			}
			data->status[0] =
			  (val & TMP401_STATUS_REMOTE_OPEN) >> 1;
			data->status[1] =
			  ((val & TMP401_STATUS_REMOTE_LOW) >> 2) |
			  ((val & TMP401_STATUS_LOCAL_LOW) >> 5);
			data->status[2] =
			  ((val & TMP401_STATUS_REMOTE_HIGH) >> 3) |
			  ((val & TMP401_STATUS_LOCAL_HIGH) >> 6);
			data->status[3] = val & (TMP401_STATUS_LOCAL_CRIT
						| TMP401_STATUS_REMOTE_CRIT);
		} else {
			for (i = 0; i < FUNC0(data->status); i++) {
				val = FUNC3(client,
							TMP432_STATUS_REG[i]);
				if (val < 0) {
					ret = FUNC1(val);
					goto abort;
				}
				data->status[i] = val;
			}
		}

		val = FUNC3(client, TMP401_CONFIG_READ);
		if (val < 0) {
			ret = FUNC1(val);
			goto abort;
		}
		data->config = val;
		val = FUNC8(client, data);
		if (val < 0) {
			ret = FUNC1(val);
			goto abort;
		}
		val = FUNC3(client, TMP401_TEMP_CRIT_HYST);
		if (val < 0) {
			ret = FUNC1(val);
			goto abort;
		}
		data->temp_crit_hyst = val;

		data->last_updated = jiffies;
		data->valid = 1;
	}

abort:
	FUNC6(&data->update_lock);
	return ret;
}