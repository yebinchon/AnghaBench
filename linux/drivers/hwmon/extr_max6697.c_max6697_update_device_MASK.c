#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct max6697_data {int valid; int** temp; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; TYPE_1__* chip; int /*<<< orphan*/  update_interval; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int channels; int have_ext; int have_crit; } ;

/* Variables and functions */
 struct max6697_data* FUNC0 (int) ; 
 int /*<<< orphan*/ * MAX6697_REG_CRIT ; 
 int /*<<< orphan*/ * MAX6697_REG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * MAX6697_REG_TEMP ; 
 int /*<<< orphan*/ * MAX6697_REG_TEMP_EXT ; 
 size_t MAX6697_TEMP_CRIT ; 
 size_t MAX6697_TEMP_EXT ; 
 size_t MAX6697_TEMP_INPUT ; 
 size_t MAX6697_TEMP_MAX ; 
 struct max6697_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct max6697_data *FUNC9(struct device *dev)
{
	struct max6697_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	struct max6697_data *ret = data;
	int val;
	int i;
	u32 alarms;

	FUNC5(&data->update_lock);

	if (data->valid &&
	    !FUNC7(jiffies, data->last_updated
			+ FUNC4(data->update_interval)))
		goto abort;

	for (i = 0; i < data->chip->channels; i++) {
		if (data->chip->have_ext & (1 << i)) {
			val = FUNC3(client,
						       MAX6697_REG_TEMP_EXT[i]);
			if (FUNC8(val < 0)) {
				ret = FUNC0(val);
				goto abort;
			}
			data->temp[i][MAX6697_TEMP_EXT] = val;
		}

		val = FUNC3(client, MAX6697_REG_TEMP[i]);
		if (FUNC8(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->temp[i][MAX6697_TEMP_INPUT] = val;

		val = FUNC3(client, MAX6697_REG_MAX[i]);
		if (FUNC8(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->temp[i][MAX6697_TEMP_MAX] = val;

		if (data->chip->have_crit & (1 << i)) {
			val = FUNC3(client,
						       MAX6697_REG_CRIT[i]);
			if (FUNC8(val < 0)) {
				ret = FUNC0(val);
				goto abort;
			}
			data->temp[i][MAX6697_TEMP_CRIT] = val;
		}
	}

	alarms = 0;
	for (i = 0; i < 3; i++) {
		val = FUNC3(client, FUNC1(i));
		if (FUNC8(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		alarms = (alarms << 8) | val;
	}
	data->alarms = alarms;
	data->last_updated = jiffies;
	data->valid = true;
abort:
	FUNC6(&data->update_lock);

	return ret;
}