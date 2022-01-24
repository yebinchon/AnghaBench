#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lm85_data {scalar_t__ type; int cfg5; int* pwm_freq; int /*<<< orphan*/  update_lock; TYPE_1__* zone; int /*<<< orphan*/  freq_map_size; int /*<<< orphan*/  freq_map; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int range; } ;

/* Variables and functions */
 int ADT7468_HFPWM ; 
 int /*<<< orphan*/  ADT7468_REG_CFG5 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ adt7468 ; 
 struct lm85_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t count)
{
	int nr = FUNC7(attr)->index;
	struct lm85_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	/*
	 * The ADT7468 has a special high-frequency PWM output mode,
	 * where all PWM outputs are driven by a 22.5 kHz clock.
	 * This might confuse the user, but there's not much we can do.
	 */
	if (data->type == adt7468 && val >= 11300) {	/* High freq. mode */
		data->cfg5 &= ~ADT7468_HFPWM;
		FUNC4(client, ADT7468_REG_CFG5, data->cfg5);
	} else {					/* Low freq. mode */
		data->pwm_freq[nr] = FUNC0(data->freq_map,
						 data->freq_map_size, val);
		FUNC4(client, FUNC1(nr),
				 (data->zone[nr].range << 4)
				 | data->pwm_freq[nr]);
		if (data->type == adt7468) {
			data->cfg5 |= ADT7468_HFPWM;
			FUNC4(client, ADT7468_REG_CFG5, data->cfg5);
		}
	}
	FUNC6(&data->update_lock);
	return count;
}