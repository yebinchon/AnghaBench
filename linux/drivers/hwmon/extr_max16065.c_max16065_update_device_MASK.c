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
struct max16065_data {int valid; int num_adc; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void** fault; void* curr_sense; void** adc; scalar_t__ have_current; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MAX16065_CSP_ADC ; 
 int /*<<< orphan*/  MAX16065_CURR_SENSE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t MAX16065_NUM_ADC ; 
 struct max16065_data* FUNC3 (struct device*) ; 
 void* FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 void* FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct max16065_data *FUNC9(struct device *dev)
{
	struct max16065_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;

	FUNC6(&data->update_lock);
	if (FUNC8(jiffies, data->last_updated + HZ) || !data->valid) {
		int i;

		for (i = 0; i < data->num_adc; i++)
			data->adc[i]
			  = FUNC5(client, FUNC1(i));

		if (data->have_current) {
			data->adc[MAX16065_NUM_ADC]
			  = FUNC5(client, MAX16065_CSP_ADC);
			data->curr_sense
			  = FUNC4(client,
						     MAX16065_CURR_SENSE);
		}

		for (i = 0; i < FUNC0(data->num_adc, 8); i++)
			data->fault[i]
			  = FUNC4(client, FUNC2(i));

		data->last_updated = jiffies;
		data->valid = 1;
	}
	FUNC7(&data->update_lock);
	return data;
}