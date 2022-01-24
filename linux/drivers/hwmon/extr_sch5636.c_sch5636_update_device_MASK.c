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
struct sch5636_data {int valid; int* in; int* temp_ctrl; int* temp_val; int* fan_ctrl; int* fan_val; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sch5636_data* FUNC0 (int) ; 
 scalar_t__ HZ ; 
 int SCH5636_FAN_ALARM ; 
 int SCH5636_FAN_DEACTIVATED ; 
 int SCH5636_NO_FANS ; 
 int SCH5636_NO_INS ; 
 int SCH5636_NO_TEMPS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SCH5636_REG_FAN_VAL ; 
 int /*<<< orphan*/ * SCH5636_REG_IN_VAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * SCH5636_REG_TEMP_VAL ; 
 int SCH5636_TEMP_ALARM ; 
 int SCH5636_TEMP_DEACTIVATED ; 
 struct sch5636_data* FUNC3 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static struct sch5636_data *FUNC11(struct device *dev)
{
	struct sch5636_data *data = FUNC3(dev);
	struct sch5636_data *ret = data;
	int i, val;

	FUNC4(&data->update_lock);

	/* Cache the values for 1 second */
	if (data->valid && !FUNC9(jiffies, data->last_updated + HZ))
		goto abort;

	for (i = 0; i < SCH5636_NO_INS; i++) {
		val = FUNC6(data->addr,
					       SCH5636_REG_IN_VAL[i]);
		if (FUNC10(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->in[i] = val;
	}

	for (i = 0; i < SCH5636_NO_TEMPS; i++) {
		if (data->temp_ctrl[i] & SCH5636_TEMP_DEACTIVATED)
			continue;

		val = FUNC6(data->addr,
					       SCH5636_REG_TEMP_VAL[i]);
		if (FUNC10(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->temp_val[i] = val;

		val = FUNC6(data->addr,
					       FUNC2(i));
		if (FUNC10(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->temp_ctrl[i] = val;
		/* Alarms need to be explicitly write-cleared */
		if (val & SCH5636_TEMP_ALARM) {
			FUNC8(data->addr,
						FUNC2(i), val);
		}
	}

	for (i = 0; i < SCH5636_NO_FANS; i++) {
		if (data->fan_ctrl[i] & SCH5636_FAN_DEACTIVATED)
			continue;

		val = FUNC7(data->addr,
						 SCH5636_REG_FAN_VAL[i]);
		if (FUNC10(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->fan_val[i] = val;

		val = FUNC6(data->addr,
					       FUNC1(i));
		if (FUNC10(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->fan_ctrl[i] = val;
		/* Alarms need to be explicitly write-cleared */
		if (val & SCH5636_FAN_ALARM) {
			FUNC8(data->addr,
						FUNC1(i), val);
		}
	}

	data->last_updated = jiffies;
	data->valid = 1;
abort:
	FUNC5(&data->update_lock);
	return ret;
}