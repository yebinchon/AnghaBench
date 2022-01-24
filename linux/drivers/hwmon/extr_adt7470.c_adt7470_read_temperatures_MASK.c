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
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct adt7470_data {int num_temp_sensors; int temperatures_probed; void** temp; } ;

/* Variables and functions */
 int ADT7470_FAN_COUNT ; 
 int ADT7470_PWM_AUTO_MASK ; 
 int /*<<< orphan*/  ADT7470_REG_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ADT7470_TEMP_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EAGAIN ; 
 int TEMP_COLLECTION_TIME ; 
 void* FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
				     struct adt7470_data *data)
{
	unsigned long res;
	int i;
	u8 cfg, pwm[4], pwm_cfg[2];

	/* save pwm[1-4] config register */
	pwm_cfg[0] = FUNC3(client, FUNC1(0));
	pwm_cfg[1] = FUNC3(client, FUNC1(2));

	/* set manual pwm to whatever it is set to now */
	for (i = 0; i < ADT7470_FAN_COUNT; i++)
		pwm[i] = FUNC3(client, FUNC0(i));

	/* put pwm in manual mode */
	FUNC4(client, FUNC1(0),
		pwm_cfg[0] & ~(ADT7470_PWM_AUTO_MASK));
	FUNC4(client, FUNC1(2),
		pwm_cfg[1] & ~(ADT7470_PWM_AUTO_MASK));

	/* write pwm control to whatever it was */
	for (i = 0; i < ADT7470_FAN_COUNT; i++)
		FUNC4(client, FUNC0(i), pwm[i]);

	/* start reading temperature sensors */
	cfg = FUNC3(client, ADT7470_REG_CFG);
	cfg |= 0x80;
	FUNC4(client, ADT7470_REG_CFG, cfg);

	/* Delay is 200ms * number of temp sensors. */
	res = FUNC5((data->num_temp_sensors >= 0 ?
				    data->num_temp_sensors * 200 :
				    TEMP_COLLECTION_TIME));

	/* done reading temperature sensors */
	cfg = FUNC3(client, ADT7470_REG_CFG);
	cfg &= ~0x80;
	FUNC4(client, ADT7470_REG_CFG, cfg);

	/* restore pwm[1-4] config registers */
	FUNC4(client, FUNC1(0), pwm_cfg[0]);
	FUNC4(client, FUNC1(2), pwm_cfg[1]);

	if (res) {
		FUNC6("ha ha, interrupted\n");
		return -EAGAIN;
	}

	/* Only count fans if we have to */
	if (data->num_temp_sensors >= 0)
		return 0;

	for (i = 0; i < ADT7470_TEMP_COUNT; i++) {
		data->temp[i] = FUNC3(client,
						FUNC2(i));
		if (data->temp[i])
			data->num_temp_sensors = i + 1;
	}
	data->temperatures_probed = 1;
	return 0;
}