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
struct i2c_client {int dummy; } ;
struct f75375_data {int valid; int* temp_high; int* temp_max_hyst; int* in_max; int* in_min; int fan_timer; int* pwm; int* temp11; scalar_t__ kind; int* in; int /*<<< orphan*/  update_lock; void* last_updated; void** fan; void* last_limits; void** fan_target; void** fan_min; void** fan_max; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  F75375_REG_FAN_TIMER ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int HZ ; 
 void* FUNC12 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ f75387 ; 
 struct f75375_data* FUNC14 (struct i2c_client*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (void*,void*) ; 
 struct i2c_client* FUNC18 (struct device*) ; 

__attribute__((used)) static struct f75375_data *FUNC19(struct device *dev)
{
	struct i2c_client *client = FUNC18(dev);
	struct f75375_data *data = FUNC14(client);
	int nr;

	FUNC15(&data->update_lock);

	/* Limit registers cache is refreshed after 60 seconds */
	if (FUNC17(jiffies, data->last_limits + 60 * HZ)
		|| !data->valid) {
		for (nr = 0; nr < 2; nr++) {
			data->temp_high[nr] =
				FUNC13(client, FUNC6(nr));
			data->temp_max_hyst[nr] =
				FUNC13(client, FUNC7(nr));
			data->fan_max[nr] =
				FUNC12(client, FUNC2(nr));
			data->fan_min[nr] =
				FUNC12(client, FUNC3(nr));
			data->fan_target[nr] =
				FUNC12(client, FUNC1(nr));
		}
		for (nr = 0; nr < 4; nr++) {
			data->in_max[nr] =
				FUNC13(client, FUNC9(nr));
			data->in_min[nr] =
				FUNC13(client, FUNC10(nr));
		}
		data->fan_timer = FUNC13(client, F75375_REG_FAN_TIMER);
		data->last_limits = jiffies;
	}

	/* Measurement registers cache is refreshed after 2 second */
	if (FUNC17(jiffies, data->last_updated + 2 * HZ)
		|| !data->valid) {
		for (nr = 0; nr < 2; nr++) {
			data->pwm[nr] =	FUNC13(client,
				FUNC4(nr));
			/* assign MSB, therefore shift it by 8 bits */
			data->temp11[nr] =
				FUNC13(client, FUNC5(nr)) << 8;
			if (data->kind == f75387)
				/* merge F75387's temperature LSB (11-bit) */
				data->temp11[nr] |=
					FUNC13(client,
						     FUNC11(nr));
			data->fan[nr] =
				FUNC12(client, FUNC0(nr));
		}
		for (nr = 0; nr < 4; nr++)
			data->in[nr] =
				FUNC13(client, FUNC8(nr));

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC16(&data->update_lock);
	return data;
}