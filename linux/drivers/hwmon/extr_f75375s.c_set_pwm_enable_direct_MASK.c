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
struct f75375_data {scalar_t__ kind; int* pwm_enable; int* pwm; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  F75375_REG_FAN_TIMER ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int) ; 
 scalar_t__ f75387 ; 
 struct f75375_data* FUNC7 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, int nr, int val)
{
	struct f75375_data *data = FUNC7(client);
	u8 fanmode;

	if (val < 0 || val > 4)
		return -EINVAL;

	fanmode = FUNC4(client, F75375_REG_FAN_TIMER);
	if (data->kind == f75387) {
		/* For now, deny dangerous toggling of duty mode */
		if (FUNC3(data->pwm_enable[nr]) !=
				FUNC3(val))
			return -EOPNOTSUPP;
		/* clear each fanX_mode bit before setting them properly */
		fanmode &= ~(1 << FUNC0(nr));
		fanmode &= ~(1 << FUNC1(nr));
		switch (val) {
		case 0: /* full speed */
			fanmode |= (1 << FUNC1(nr));
			fanmode |= (1 << FUNC0(nr));
			data->pwm[nr] = 255;
			break;
		case 1: /* PWM */
			fanmode  |= (1 << FUNC1(nr));
			fanmode  |= (1 << FUNC0(nr));
			break;
		case 2: /* Automatic, speed mode */
			break;
		case 3: /* fan speed */
			fanmode |= (1 << FUNC1(nr));
			break;
		case 4: /* Automatic, pwm */
			fanmode |= (1 << FUNC0(nr));
			break;
		}
	} else {
		/* clear each fanX_mode bit before setting them properly */
		fanmode &= ~(3 << FUNC2(nr));
		switch (val) {
		case 0: /* full speed */
			fanmode  |= (3 << FUNC2(nr));
			data->pwm[nr] = 255;
			break;
		case 1: /* PWM */
			fanmode  |= (3 << FUNC2(nr));
			break;
		case 2: /* AUTOMATIC*/
			fanmode  |= (1 << FUNC2(nr));
			break;
		case 3: /* fan speed */
			break;
		case 4: /* Automatic pwm */
			return -EINVAL;
		}
	}

	FUNC5(client, F75375_REG_FAN_TIMER, fanmode);
	data->pwm_enable[nr] = val;
	if (val == 0)
		FUNC6(client, nr);
	return 0;
}