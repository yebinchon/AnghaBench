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
struct sht15_data {int measurements_valid; int /*<<< orphan*/  read_lock; scalar_t__ last_measurement; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SHT15_MEASURE_RH ; 
 int /*<<< orphan*/  SHT15_MEASURE_TEMP ; 
 int /*<<< orphan*/  SHT15_READING_HUMID ; 
 int /*<<< orphan*/  SHT15_READING_TEMP ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sht15_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct sht15_data *data)
{
	int ret = 0;
	int timeout = HZ;

	FUNC0(&data->read_lock);
	if (FUNC3(jiffies, data->last_measurement + timeout)
	    || !data->measurements_valid) {
		data->state = SHT15_READING_HUMID;
		ret = FUNC2(data, SHT15_MEASURE_RH, 160);
		if (ret)
			goto unlock;
		data->state = SHT15_READING_TEMP;
		ret = FUNC2(data, SHT15_MEASURE_TEMP, 400);
		if (ret)
			goto unlock;
		data->measurements_valid = true;
		data->last_measurement = jiffies;
	}

unlock:
	FUNC1(&data->read_lock);
	return ret;
}