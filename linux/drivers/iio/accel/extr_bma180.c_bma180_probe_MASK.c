#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct i2c_device_id {int driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_19__ {scalar_t__ of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_3__ dev; } ;
struct bma180_data {TYPE_15__* part_info; TYPE_4__* trig; int /*<<< orphan*/  mutex; int /*<<< orphan*/  orientation; struct i2c_client* client; } ;
typedef  enum chip_ids { ____Placeholder_chip_ids } chip_ids ;
struct TYPE_18__ {TYPE_3__* parent; } ;
struct TYPE_20__ {int /*<<< orphan*/ * ops; TYPE_2__ dev; } ;
struct TYPE_16__ {int (* chip_config ) (struct bma180_data*) ;int /*<<< orphan*/  (* chip_disable ) (struct bma180_data*) ;int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  bma180_info ; 
 TYPE_15__* bma180_part_info ; 
 int /*<<< orphan*/  bma180_trigger_handler ; 
 int /*<<< orphan*/  bma180_trigger_ops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 struct iio_dev* FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct bma180_data* FUNC5 (struct iio_dev*) ; 
 int FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  iio_trigger_generic_data_rdy_poll ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (struct iio_dev*) ; 
 int FUNC14 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 
 int FUNC17 (struct bma180_data*) ; 
 int /*<<< orphan*/  FUNC18 (struct bma180_data*) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct bma180_data *data;
	struct iio_dev *indio_dev;
	enum chip_ids chip;
	int ret;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC5(indio_dev);
	FUNC3(client, indio_dev);
	data->client = client;
	if (client->dev.of_node)
		chip = (enum chip_ids)FUNC16(&client->dev);
	else
		chip = id->driver_data;
	data->part_info = &bma180_part_info[chip];

	ret = FUNC6(&client->dev, "mount-matrix",
				&data->orientation);
	if (ret)
		return ret;

	ret = data->part_info->chip_config(data);
	if (ret < 0)
		goto err_chip_disable;

	FUNC15(&data->mutex);
	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = data->part_info->channels;
	indio_dev->num_channels = data->part_info->num_channels;
	indio_dev->name = id->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &bma180_info;

	if (client->irq > 0) {
		data->trig = FUNC7("%s-dev%d", indio_dev->name,
			indio_dev->id);
		if (!data->trig) {
			ret = -ENOMEM;
			goto err_chip_disable;
		}

		ret = FUNC2(&client->dev, client->irq,
			iio_trigger_generic_data_rdy_poll, IRQF_TRIGGER_RISING,
			"bma180_event", data->trig);
		if (ret) {
			FUNC0(&client->dev, "unable to request IRQ\n");
			goto err_trigger_free;
		}

		data->trig->dev.parent = &client->dev;
		data->trig->ops = &bma180_trigger_ops;
		FUNC11(data->trig, indio_dev);
		indio_dev->trig = FUNC9(data->trig);

		ret = FUNC10(data->trig);
		if (ret)
			goto err_trigger_free;
	}

	ret = FUNC14(indio_dev, NULL,
			bma180_trigger_handler, NULL);
	if (ret < 0) {
		FUNC0(&client->dev, "unable to setup iio triggered buffer\n");
		goto err_trigger_unregister;
	}

	ret = FUNC4(indio_dev);
	if (ret < 0) {
		FUNC0(&client->dev, "unable to register iio device\n");
		goto err_buffer_cleanup;
	}

	return 0;

err_buffer_cleanup:
	FUNC13(indio_dev);
err_trigger_unregister:
	if (data->trig)
		FUNC12(data->trig);
err_trigger_free:
	FUNC8(data->trig);
err_chip_disable:
	data->part_info->chip_disable(data);

	return ret;
}