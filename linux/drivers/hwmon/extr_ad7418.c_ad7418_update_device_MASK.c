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
struct device {int dummy; } ;
struct ad7418_data {int valid; int* temp; int adc_max; int* in; int /*<<< orphan*/  lock; scalar_t__ last_updated; struct i2c_client* client; } ;
typedef  int s32 ;

/* Variables and functions */
 int AD7418_CH_TEMP ; 
 int /*<<< orphan*/  AD7418_REG_ADC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  AD7418_REG_CONF ; 
 int /*<<< orphan*/ * AD7418_REG_TEMP ; 
 int HZ ; 
 struct ad7418_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct ad7418_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	s32 val;

	FUNC6(&data->lock);

	if (FUNC8(jiffies, data->last_updated + HZ + HZ / 2)
		|| !data->valid) {
		u8 cfg;
		int i, ch;

		/* read config register and clear channel bits */
		val = FUNC2(client, AD7418_REG_CONF);
		if (val < 0)
			goto abort;

		cfg = val;
		cfg &= 0x1F;

		val = FUNC4(client, AD7418_REG_CONF,
						cfg | AD7418_CH_TEMP);
		if (val < 0)
			goto abort;

		FUNC9(30);

		for (i = 0; i < 3; i++) {
			val = FUNC3(client,
							  AD7418_REG_TEMP[i]);
			if (val < 0)
				goto abort;

			data->temp[i] = val;
		}

		for (i = 0, ch = 4; i < data->adc_max; i++, ch--) {
			val = FUNC4(client, AD7418_REG_CONF,
					cfg | FUNC0(ch));
			if (val < 0)
				goto abort;

			FUNC9(15);
			val = FUNC3(client,
							  AD7418_REG_ADC);
			if (val < 0)
				goto abort;

			data->in[data->adc_max - 1 - i] = val;
		}

		/* restore old configuration value */
		val = FUNC5(client, AD7418_REG_CONF,
						   cfg);
		if (val < 0)
			goto abort;

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC7(&data->lock);
	return 0;

abort:
	data->valid = 0;
	FUNC7(&data->lock);
	return val;
}