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
struct w83l786ng_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* fan_div; int* pwm_mode; int* pwm_enable; int* pwm; int** temp; int* tolerance; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int* W83L786NG_PWM_ENABLE_SHIFT ; 
 int* W83L786NG_PWM_MODE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  W83L786NG_REG_FAN_CFG ; 
 int /*<<< orphan*/  W83L786NG_REG_FAN_DIV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * W83L786NG_REG_PWM ; 
 int /*<<< orphan*/ ** W83L786NG_REG_TEMP ; 
 int /*<<< orphan*/  W83L786NG_REG_TOLERANCE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct w83l786ng_data* FUNC6 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct w83l786ng_data *FUNC11(struct device *dev)
{
	struct w83l786ng_data *data = FUNC6(dev);
	struct i2c_client *client = data->client;
	int i, j;
	u8 reg_tmp, pwmcfg;

	FUNC7(&data->update_lock);
	if (FUNC9(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {
		FUNC5(&client->dev, "Updating w83l786ng data.\n");

		/* Update the voltages measured value and limits */
		for (i = 0; i < 3; i++) {
			data->in[i] = FUNC10(client,
			    FUNC2(i));
			data->in_min[i] = FUNC10(client,
			    FUNC4(i));
			data->in_max[i] = FUNC10(client,
			    FUNC3(i));
		}

		/* Update the fan counts and limits */
		for (i = 0; i < 2; i++) {
			data->fan[i] = FUNC10(client,
			    FUNC0(i));
			data->fan_min[i] = FUNC10(client,
			    FUNC1(i));
		}

		/* Update the fan divisor */
		reg_tmp = FUNC10(client, W83L786NG_REG_FAN_DIV);
		data->fan_div[0] = reg_tmp & 0x07;
		data->fan_div[1] = (reg_tmp >> 4) & 0x07;

		pwmcfg = FUNC10(client, W83L786NG_REG_FAN_CFG);
		for (i = 0; i < 2; i++) {
			data->pwm_mode[i] =
			    ((pwmcfg >> W83L786NG_PWM_MODE_SHIFT[i]) & 1)
			    ? 0 : 1;
			data->pwm_enable[i] =
			    ((pwmcfg >> W83L786NG_PWM_ENABLE_SHIFT[i]) & 3) + 1;
			data->pwm[i] =
			    (FUNC10(client, W83L786NG_REG_PWM[i])
			     & 0x0f) * 0x11;
		}


		/* Update the temperature sensors */
		for (i = 0; i < 2; i++) {
			for (j = 0; j < 3; j++) {
				data->temp[i][j] = FUNC10(client,
				    W83L786NG_REG_TEMP[i][j]);
			}
		}

		/* Update Smart Fan I/II tolerance */
		reg_tmp = FUNC10(client, W83L786NG_REG_TOLERANCE);
		data->tolerance[0] = reg_tmp & 0x0f;
		data->tolerance[1] = (reg_tmp >> 4) & 0x0f;

		data->last_updated = jiffies;
		data->valid = 1;

	}

	FUNC8(&data->update_lock);

	return data;
}