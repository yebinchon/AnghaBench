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
struct apds9960_data {int als_adc_int_us; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS9960_REG_ATIME ; 
 int FUNC0 (int**) ; 
 int EINVAL ; 
 int** apds9960_int_time ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct apds9960_data *data, int val2)
{
	int ret = -EINVAL;
	int idx;

	for (idx = 0; idx < FUNC0(apds9960_int_time); idx++) {
		if (apds9960_int_time[idx][0] == val2) {
			FUNC1(&data->lock);
			ret = FUNC3(data->regmap, APDS9960_REG_ATIME,
						 apds9960_int_time[idx][1]);
			if (!ret)
				data->als_adc_int_us = val2;
			FUNC2(&data->lock);
			break;
		}
	}

	return ret;
}