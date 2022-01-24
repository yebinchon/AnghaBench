#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* raw_words; } ;
struct sgp_data {struct i2c_client* client; int /*<<< orphan*/  iaq_thread; TYPE_3__ buffer; int /*<<< orphan*/  feature_set; int /*<<< orphan*/  data_lock; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_2__ dev; } ;
struct i2c_device_id {unsigned long driver_data; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  SGP_CMD_DURATION_US ; 
 int /*<<< orphan*/  SGP_CMD_GET_FEATURE_SET ; 
 int /*<<< orphan*/  SGP_CRC8_POLYNOMIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 struct sgp_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sgp_data*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sgp_data*,unsigned long) ; 
 int /*<<< orphan*/  sgp_crc8_table ; 
 TYPE_4__* sgp_devices ; 
 int /*<<< orphan*/  sgp_dt_ids ; 
 int /*<<< orphan*/  sgp_iaq_threadfn ; 
 int /*<<< orphan*/  sgp_info ; 
 int /*<<< orphan*/  FUNC11 (struct sgp_data*) ; 
 int FUNC12 (struct sgp_data*,int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
		     const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct sgp_data *data;
	const struct of_device_id *of_id;
	unsigned long product_id;
	int ret;

	indio_dev = FUNC3(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	of_id = FUNC9(sgp_dt_ids, &client->dev);
	if (of_id)
		product_id = (unsigned long)of_id->data;
	else
		product_id = id->driver_data;

	data = FUNC6(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;
	FUNC1(sgp_crc8_table, SGP_CRC8_POLYNOMIAL);
	FUNC8(&data->data_lock);

	/* get feature set version and write it to client data */
	ret = FUNC12(data, SGP_CMD_GET_FEATURE_SET, &data->buffer, 1,
			   SGP_CMD_DURATION_US);
	if (ret < 0)
		return ret;

	data->feature_set = FUNC0(data->buffer.raw_words[0].value);

	ret = FUNC10(data, product_id);
	if (ret)
		return ret;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &sgp_info;
	indio_dev->name = id->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = sgp_devices[product_id].channels;
	indio_dev->num_channels = sgp_devices[product_id].num_channels;

	FUNC11(data);

	ret = FUNC4(&client->dev, indio_dev);
	if (ret) {
		FUNC2(&client->dev, "failed to register iio device\n");
		return ret;
	}

	data->iaq_thread = FUNC7(sgp_iaq_threadfn, data,
				       "%s-iaq", data->client->name);

	return 0;
}