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
struct adt7475_data {int** pwm; int* pwmctl; int* pwmchan; } ;

/* Variables and functions */
 size_t CONTROL ; 
 size_t INPUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct adt7475_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client, int index)
{
	struct adt7475_data *data = FUNC2(client);
	unsigned int v;

	data->pwm[CONTROL][index] = FUNC1(FUNC0(index));

	/*
	 * Figure out the internal value for pwmctrl and pwmchan
	 * based on the current settings
	 */
	v = (data->pwm[CONTROL][index] >> 5) & 7;

	if (v == 3)
		data->pwmctl[index] = 0;
	else if (v == 7)
		data->pwmctl[index] = 1;
	else if (v == 4) {
		/*
		 * The fan is disabled - we don't want to
		 * support that, so change to manual mode and
		 * set the duty cycle to 0 instead
		 */
		data->pwm[INPUT][index] = 0;
		data->pwm[CONTROL][index] &= ~0xE0;
		data->pwm[CONTROL][index] |= (7 << 5);

		FUNC3(client, FUNC0(index),
					  data->pwm[INPUT][index]);

		FUNC3(client, FUNC0(index),
					  data->pwm[CONTROL][index]);

		data->pwmctl[index] = 1;
	} else {
		data->pwmctl[index] = 2;

		switch (v) {
		case 0:
			data->pwmchan[index] = 1;
			break;
		case 1:
			data->pwmchan[index] = 2;
			break;
		case 2:
			data->pwmchan[index] = 4;
			break;
		case 5:
			data->pwmchan[index] = 6;
			break;
		case 6:
			data->pwmchan[index] = 7;
			break;
		}
	}
}