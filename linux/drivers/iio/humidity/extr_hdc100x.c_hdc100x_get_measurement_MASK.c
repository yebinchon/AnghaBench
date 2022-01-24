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
typedef  int /*<<< orphan*/  val ;
struct iio_chan_spec {size_t address; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct hdc100x_data {int* adc_int_us; struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,char*,int) ; 
 int FUNC3 (struct i2c_client*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct hdc100x_data *data,
				   struct iio_chan_spec const *chan)
{
	struct i2c_client *client = data->client;
	int delay = data->adc_int_us[chan->address];
	int ret;
	__be16 val;

	/* start measurement */
	ret = FUNC3(client, chan->address);
	if (ret < 0) {
		FUNC1(&client->dev, "cannot start measurement");
		return ret;
	}

	/* wait for integration time to pass */
	FUNC4(delay, delay + 1000);

	/* read measurement */
	ret = FUNC2(data->client, (char *)&val, sizeof(val));
	if (ret < 0) {
		FUNC1(&client->dev, "cannot read sensor data\n");
		return ret;
	}
	return FUNC0(val);
}