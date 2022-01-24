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
struct lm63_data {int lut_valid; int lut_size; scalar_t__ lut_last_updated; void* lut_temp_hyst; void** temp8; void** pwm1; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LM63_REG_LUT_TEMP_HYST ; 
 void* FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct lm63_data *data)
{
	struct i2c_client *client = data->client;
	int i;

	if (FUNC3(jiffies, data->lut_last_updated + 5 * HZ) ||
	    !data->lut_valid) {
		for (i = 0; i < data->lut_size; i++) {
			data->pwm1[1 + i] = FUNC2(client,
					    FUNC0(i));
			data->temp8[3 + i] = FUNC2(client,
					     FUNC1(i));
		}
		data->lut_temp_hyst = FUNC2(client,
				      LM63_REG_LUT_TEMP_HYST);

		data->lut_last_updated = jiffies;
		data->lut_valid = 1;
	}
}