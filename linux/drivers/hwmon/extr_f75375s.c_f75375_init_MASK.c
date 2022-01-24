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
struct f75375s_platform_data {int /*<<< orphan*/ * pwm; int /*<<< orphan*/ * pwm_enable; } ;
struct f75375_data {scalar_t__ kind; int* pwm_mode; int* pwm_enable; int /*<<< orphan*/ * pwm; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  F75375_REG_CONFIG1 ; 
 int /*<<< orphan*/  F75375_REG_FAN_TIMER ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int) ; 
 scalar_t__ f75387 ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct i2c_client *client, struct f75375_data *data,
		struct f75375s_platform_data *f75375s_pdata)
{
	int nr;

	if (!f75375s_pdata) {
		u8 conf, mode;
		int nr;

		conf = FUNC8(client, F75375_REG_CONFIG1);
		mode = FUNC8(client, F75375_REG_FAN_TIMER);
		for (nr = 0; nr < 2; nr++) {
			if (data->kind == f75387) {
				bool manu, duty;

				if (!(mode & (1 << FUNC1(nr))))
					data->pwm_mode[nr] = 1;

				manu = ((mode >> FUNC3(nr)) & 1);
				duty = ((mode >> FUNC2(nr)) & 1);
				if (!manu && duty)
					/* auto, pwm */
					data->pwm_enable[nr] = 4;
				else if (manu && !duty)
					/* manual, speed */
					data->pwm_enable[nr] = 3;
				else if (!manu && !duty)
					/* automatic, speed */
					data->pwm_enable[nr] = 2;
				else
					/* manual, pwm */
					data->pwm_enable[nr] = 1;
			} else {
				if (!(conf & (1 << FUNC0(nr))))
					data->pwm_mode[nr] = 1;

				switch ((mode >> FUNC4(nr)) & 3) {
				case 0:		/* speed */
					data->pwm_enable[nr] = 3;
					break;
				case 1:		/* automatic */
					data->pwm_enable[nr] = 2;
					break;
				default:	/* manual */
					data->pwm_enable[nr] = 1;
					break;
				}
			}
		}
		return;
	}

	FUNC10(client, 0, f75375s_pdata->pwm_enable[0]);
	FUNC10(client, 1, f75375s_pdata->pwm_enable[1]);
	for (nr = 0; nr < 2; nr++) {
		if (FUNC5(f75375s_pdata->pwm_enable[nr]) ||
		    !FUNC7(f75375s_pdata->pwm_enable[nr]))
			continue;
		data->pwm[nr] = FUNC6(f75375s_pdata->pwm[nr], 0, 255);
		FUNC9(client, nr);
	}

}