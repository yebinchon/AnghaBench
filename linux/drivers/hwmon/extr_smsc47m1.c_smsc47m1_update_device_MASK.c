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
struct smsc47m1_data {scalar_t__ type; int* fan; int* fan_preload; int* pwm; int* fan_div; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SMSC47M1_REG_ALARM ; 
 int /*<<< orphan*/ * SMSC47M1_REG_FAN ; 
 int /*<<< orphan*/  SMSC47M1_REG_FANDIV ; 
 int /*<<< orphan*/ * SMSC47M1_REG_FAN_PRELOAD ; 
 int /*<<< orphan*/ * SMSC47M1_REG_PWM ; 
 int /*<<< orphan*/  SMSC47M2_REG_ALARM6 ; 
 int /*<<< orphan*/  SMSC47M2_REG_FANDIV3 ; 
 struct smsc47m1_data* FUNC0 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct smsc47m1_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smsc47m1_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ smsc47m2 ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct smsc47m1_data *FUNC6(struct device *dev,
		int init)
{
	struct smsc47m1_data *data = FUNC0(dev);

	FUNC1(&data->update_lock);

	if (FUNC5(jiffies, data->last_updated + HZ + HZ / 2) || init) {
		int i, fan_nr;
		fan_nr = data->type == smsc47m2 ? 3 : 2;

		for (i = 0; i < fan_nr; i++) {
			data->fan[i] = FUNC3(data,
				       SMSC47M1_REG_FAN[i]);
			data->fan_preload[i] = FUNC3(data,
					       SMSC47M1_REG_FAN_PRELOAD[i]);
			data->pwm[i] = FUNC3(data,
				       SMSC47M1_REG_PWM[i]);
		}

		i = FUNC3(data, SMSC47M1_REG_FANDIV);
		data->fan_div[0] = (i >> 4) & 0x03;
		data->fan_div[1] = i >> 6;

		data->alarms = FUNC3(data,
			       SMSC47M1_REG_ALARM) >> 6;
		/* Clear alarms if needed */
		if (data->alarms)
			FUNC4(data, SMSC47M1_REG_ALARM, 0xC0);

		if (fan_nr >= 3) {
			data->fan_div[2] = (FUNC3(data,
					    SMSC47M2_REG_FANDIV3) >> 4) & 0x03;
			data->alarms |= (FUNC3(data,
					 SMSC47M2_REG_ALARM6) & 0x40) >> 4;
			/* Clear alarm if needed */
			if (data->alarms & 0x04)
				FUNC4(data,
						     SMSC47M2_REG_ALARM6,
						     0x40);
		}

		data->last_updated = jiffies;
	}

	FUNC2(&data->update_lock);
	return data;
}