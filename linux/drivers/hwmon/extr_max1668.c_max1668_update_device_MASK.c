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
struct max1668_data {int valid; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void** temp_min; void** temp_max; void** temp; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  void* s8 ;
typedef  int s32 ;

/* Variables and functions */
 struct max1668_data* FUNC0 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MAX1668_REG_STAT1 ; 
 int /*<<< orphan*/  MAX1668_REG_STAT2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct max1668_data* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct max1668_data *FUNC10(struct device *dev)
{
	struct max1668_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	struct max1668_data *ret = data;
	s32 val;
	int i;

	FUNC6(&data->update_lock);

	if (data->valid && !FUNC8(jiffies,
			data->last_updated + HZ + HZ / 2))
		goto abort;

	for (i = 0; i < 5; i++) {
		val = FUNC5(client, FUNC3(i));
		if (FUNC9(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->temp[i] = (s8) val;

		val = FUNC5(client, FUNC1(i));
		if (FUNC9(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->temp_max[i] = (s8) val;

		val = FUNC5(client, FUNC2(i));
		if (FUNC9(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->temp_min[i] = (s8) val;
	}

	val = FUNC5(client, MAX1668_REG_STAT1);
	if (FUNC9(val < 0)) {
		ret = FUNC0(val);
		goto abort;
	}
	data->alarms = val << 8;

	val = FUNC5(client, MAX1668_REG_STAT2);
	if (FUNC9(val < 0)) {
		ret = FUNC0(val);
		goto abort;
	}
	data->alarms |= val;

	data->last_updated = jiffies;
	data->valid = 1;
abort:
	FUNC7(&data->update_lock);

	return ret;
}