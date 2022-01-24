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
struct sch5627_data {int control; int valid; int* temp; int* fan; int* in; int /*<<< orphan*/  update_lock; void* last_updated; int /*<<< orphan*/  addr; void* last_battery; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sch5627_data* FUNC0 (int) ; 
 int HZ ; 
 int SCH5627_NO_FANS ; 
 int SCH5627_NO_IN ; 
 int SCH5627_NO_TEMPS ; 
 int /*<<< orphan*/  SCH5627_REG_CTRL ; 
 int /*<<< orphan*/ * SCH5627_REG_FAN ; 
 int /*<<< orphan*/ * SCH5627_REG_IN_HIGH_NIBBLE ; 
 int /*<<< orphan*/ * SCH5627_REG_IN_LSN ; 
 int /*<<< orphan*/ * SCH5627_REG_IN_MSB ; 
 int /*<<< orphan*/ * SCH5627_REG_TEMP_HIGH_NIBBLE ; 
 int /*<<< orphan*/ * SCH5627_REG_TEMP_LSN ; 
 int /*<<< orphan*/ * SCH5627_REG_TEMP_MSB ; 
 struct sch5627_data* FUNC1 (struct device*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (void*,void*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct sch5627_data *FUNC9(struct device *dev)
{
	struct sch5627_data *data = FUNC1(dev);
	struct sch5627_data *ret = data;
	int i, val;

	FUNC2(&data->update_lock);

	/* Trigger a Vbat voltage measurement every 5 minutes */
	if (FUNC7(jiffies, data->last_battery + 300 * HZ)) {
		FUNC6(data->addr, SCH5627_REG_CTRL,
					  data->control | 0x10);
		data->last_battery = jiffies;
	}

	/* Cache the values for 1 second */
	if (FUNC7(jiffies, data->last_updated + HZ) || !data->valid) {
		for (i = 0; i < SCH5627_NO_TEMPS; i++) {
			val = FUNC4(data->addr,
				SCH5627_REG_TEMP_MSB[i],
				SCH5627_REG_TEMP_LSN[i],
				SCH5627_REG_TEMP_HIGH_NIBBLE[i]);
			if (FUNC8(val < 0)) {
				ret = FUNC0(val);
				goto abort;
			}
			data->temp[i] = val;
		}

		for (i = 0; i < SCH5627_NO_FANS; i++) {
			val = FUNC5(data->addr,
							 SCH5627_REG_FAN[i]);
			if (FUNC8(val < 0)) {
				ret = FUNC0(val);
				goto abort;
			}
			data->fan[i] = val;
		}

		for (i = 0; i < SCH5627_NO_IN; i++) {
			val = FUNC4(data->addr,
				SCH5627_REG_IN_MSB[i],
				SCH5627_REG_IN_LSN[i],
				SCH5627_REG_IN_HIGH_NIBBLE[i]);
			if (FUNC8(val < 0)) {
				ret = FUNC0(val);
				goto abort;
			}
			data->in[i] = val;
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}
abort:
	FUNC3(&data->update_lock);
	return ret;
}