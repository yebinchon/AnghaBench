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
struct smm665_data {int valid; int faults; int* adc; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct smm665_data* FUNC0 (int) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  SMM665_MISC8_STATUS1 ; 
 int SMM665_NUM_ADC ; 
 struct smm665_data* FUNC1 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct smm665_data*,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct smm665_data *FUNC8(struct device *dev)
{
	struct smm665_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	struct smm665_data *ret = data;

	FUNC2(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ) || !data->valid) {
		int i, val;

		/*
		 * read status registers
		 */
		val = FUNC4(client, SMM665_MISC8_STATUS1);
		if (FUNC7(val < 0)) {
			ret = FUNC0(val);
			goto abort;
		}
		data->faults = val;

		/* Read adc registers */
		for (i = 0; i < SMM665_NUM_ADC; i++) {
			val = FUNC5(data, i);
			if (FUNC7(val < 0)) {
				ret = FUNC0(val);
				goto abort;
			}
			data->adc[i] = val;
		}
		data->last_updated = jiffies;
		data->valid = 1;
	}
abort:
	FUNC3(&data->update_lock);
	return ret;
}