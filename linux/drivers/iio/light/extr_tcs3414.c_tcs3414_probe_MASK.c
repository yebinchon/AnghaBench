#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcs3414_data {int gain; struct i2c_client* client; int /*<<< orphan*/  timing; int /*<<< orphan*/  control; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  TCS3414_CONTROL ; 
 int /*<<< orphan*/  TCS3414_CONTROL_POWER ; 
 int /*<<< orphan*/  TCS3414_DRV_NAME ; 
 int /*<<< orphan*/  TCS3414_GAIN ; 
 int /*<<< orphan*/  TCS3414_ID ; 
 int /*<<< orphan*/  TCS3414_INTEG_12MS ; 
 int /*<<< orphan*/  TCS3414_TIMING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct tcs3414_data* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcs3414_buffer_setup_ops ; 
 int /*<<< orphan*/  tcs3414_channels ; 
 int /*<<< orphan*/  tcs3414_info ; 
 int /*<<< orphan*/  tcs3414_trigger_handler ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct tcs3414_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (indio_dev == NULL)
		return -ENOMEM;

	data = FUNC7(indio_dev);
	FUNC3(client, indio_dev);
	data->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &tcs3414_info;
	indio_dev->name = TCS3414_DRV_NAME;
	indio_dev->channels = tcs3414_channels;
	indio_dev->num_channels = FUNC0(tcs3414_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC4(data->client, TCS3414_ID);
	if (ret < 0)
		return ret;

	switch (ret & 0xf0) {
	case 0x00:
		FUNC1(&client->dev, "TCS3404 found\n");
		break;
	case 0x10:
		FUNC1(&client->dev, "TCS3413/14/15/16 found\n");
		break;
	default:
		return -ENODEV;
	}

	data->control = TCS3414_CONTROL_POWER;
	ret = FUNC5(data->client, TCS3414_CONTROL,
		data->control);
	if (ret < 0)
		return ret;

	data->timing = TCS3414_INTEG_12MS; /* free running */
	ret = FUNC5(data->client, TCS3414_TIMING,
		data->timing);
	if (ret < 0)
		return ret;

	ret = FUNC4(data->client, TCS3414_GAIN);
	if (ret < 0)
		return ret;
	data->gain = ret;

	ret = FUNC9(indio_dev, NULL,
		tcs3414_trigger_handler, &tcs3414_buffer_setup_ops);
	if (ret < 0)
		return ret;

	ret = FUNC6(indio_dev);
	if (ret < 0)
		goto buffer_cleanup;

	return 0;

buffer_cleanup:
	FUNC8(indio_dev);
	return ret;
}