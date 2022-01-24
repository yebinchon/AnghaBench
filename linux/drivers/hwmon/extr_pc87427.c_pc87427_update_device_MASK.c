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
struct pc87427_data {int fan_enabled; int pwm_enabled; int temp_enabled; int /*<<< orphan*/  lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 struct pc87427_data* FUNC0 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pc87427_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pc87427_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pc87427_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct pc87427_data *FUNC7(struct device *dev)
{
	struct pc87427_data *data = FUNC0(dev);
	int i;

	FUNC1(&data->lock);
	if (!FUNC6(jiffies, data->last_updated + HZ)
	 && data->last_updated)
		goto done;

	/* Fans */
	for (i = 0; i < 8; i++) {
		if (!(data->fan_enabled & (1 << i)))
			continue;
		FUNC3(data, i);
	}

	/* PWM outputs */
	for (i = 0; i < 4; i++) {
		if (!(data->pwm_enabled & (1 << i)))
			continue;
		FUNC4(data, i);
	}

	/* Temperature channels */
	for (i = 0; i < 6; i++) {
		if (!(data->temp_enabled & (1 << i)))
			continue;
		FUNC5(data, i);
	}

	data->last_updated = jiffies;

done:
	FUNC2(&data->lock);
	return data;
}