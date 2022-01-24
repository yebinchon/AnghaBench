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
typedef  scalar_t__ u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct adm1031_data {unsigned long last_updated; int valid; scalar_t__ chip_type; int* ext_temp; int* temp_offset; int* temp_min; int* temp_max; int* temp_crit; int* auto_temp; int conf1; int conf2; int alarm; int* fan_div; int* fan_min; int* fan; int* pwm; int /*<<< orphan*/  update_lock; scalar_t__* temp; int /*<<< orphan*/  update_interval; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADM1031_REG_CONF1 ; 
 int /*<<< orphan*/  ADM1031_REG_CONF2 ; 
 int /*<<< orphan*/  ADM1031_REG_EXT_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ADM1031_REG_PWM ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ adm1030 ; 
 scalar_t__ adm1031 ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 struct adm1031_data* FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (unsigned long,unsigned long) ; 

__attribute__((used)) static struct adm1031_data *FUNC18(struct device *dev)
{
	struct adm1031_data *data = FUNC12(dev);
	struct i2c_client *client = data->client;
	unsigned long next_update;
	int chan;

	FUNC15(&data->update_lock);

	next_update = data->last_updated
	  + FUNC14(data->update_interval);
	if (FUNC17(jiffies, next_update) || !data->valid) {

		FUNC11(&client->dev, "Starting adm1031 update\n");
		for (chan = 0;
		     chan < ((data->chip_type == adm1031) ? 3 : 2); chan++) {
			u8 oldh, newh;

			oldh =
			    FUNC10(client, FUNC5(chan));
			data->ext_temp[chan] =
			    FUNC10(client, ADM1031_REG_EXT_TEMP);
			newh =
			    FUNC10(client, FUNC5(chan));
			if (newh != oldh) {
				data->ext_temp[chan] =
				    FUNC10(client,
						       ADM1031_REG_EXT_TEMP);
#ifdef DEBUG
				oldh =
				    adm1031_read_value(client,
						       ADM1031_REG_TEMP(chan));

				/* oldh is actually newer */
				if (newh != oldh)
					dev_warn(&client->dev,
					  "Remote temperature may be wrong.\n");
#endif
			}
			data->temp[chan] = newh;

			data->temp_offset[chan] =
			    FUNC10(client,
					       FUNC9(chan));
			data->temp_min[chan] =
			    FUNC10(client,
					       FUNC8(chan));
			data->temp_max[chan] =
			    FUNC10(client,
					       FUNC7(chan));
			data->temp_crit[chan] =
			    FUNC10(client,
					       FUNC6(chan));
			data->auto_temp[chan] =
			    FUNC10(client,
					       FUNC0(chan));

		}

		data->conf1 = FUNC10(client, ADM1031_REG_CONF1);
		data->conf2 = FUNC10(client, ADM1031_REG_CONF2);

		data->alarm = FUNC10(client, FUNC4(0))
		    | (FUNC10(client, FUNC4(1)) << 8);
		if (data->chip_type == adm1030)
			data->alarm &= 0xc0ff;

		for (chan = 0; chan < (data->chip_type == adm1030 ? 1 : 2);
		     chan++) {
			data->fan_div[chan] =
			    FUNC10(client,
					       FUNC1(chan));
			data->fan_min[chan] =
			    FUNC10(client,
					       FUNC2(chan));
			data->fan[chan] =
			    FUNC10(client,
					       FUNC3(chan));
			data->pwm[chan] =
			  (FUNC10(client,
					ADM1031_REG_PWM) >> (4 * chan)) & 0x0f;
		}
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC16(&data->update_lock);

	return data;
}