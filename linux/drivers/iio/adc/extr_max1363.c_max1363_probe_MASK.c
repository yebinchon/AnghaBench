#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct regulator {int dummy; } ;
struct max1363_state {int vref_uv; struct regulator* reg; struct regulator* vref; struct i2c_client* client; TYPE_2__* chip_info; int /*<<< orphan*/  recv; int /*<<< orphan*/  send; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  platform_data; } ;
struct i2c_client {scalar_t__ irq; TYPE_3__ dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_10__ {int int_vref_mv; int bits; int /*<<< orphan*/  info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*) ; 
 struct iio_dev* FUNC2 (TYPE_3__*,int) ; 
 struct regulator* FUNC3 (TYPE_3__*,char*) ; 
 struct regulator* FUNC4 (TYPE_3__*,char*) ; 
 int FUNC5 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,struct iio_dev*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_master_recv ; 
 int /*<<< orphan*/  i2c_master_send ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iio_dev*) ; 
 struct max1363_state* FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_dev*) ; 
 int FUNC13 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct iio_dev*) ; 
 TYPE_2__* max1363_chip_info_tbl ; 
 int /*<<< orphan*/  max1363_event_handler ; 
 int FUNC15 (struct max1363_state*) ; 
 int /*<<< orphan*/  max1363_smbus_recv ; 
 int /*<<< orphan*/  max1363_smbus_send ; 
 int /*<<< orphan*/  max1363_trigger_handler ; 
 TYPE_2__* FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (struct regulator*) ; 
 int FUNC18 (struct regulator*) ; 
 int FUNC19 (struct regulator*) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	int ret;
	struct max1363_state *st;
	struct iio_dev *indio_dev;
	struct regulator *vref;

	indio_dev = FUNC2(&client->dev,
					  sizeof(struct max1363_state));
	if (!indio_dev)
		return -ENOMEM;

	indio_dev->dev.of_node = client->dev.of_node;
	ret = FUNC9(indio_dev, client->dev.platform_data);
	if (ret < 0)
		return ret;

	st = FUNC11(indio_dev);

	st->reg = FUNC3(&client->dev, "vcc");
	if (FUNC0(st->reg)) {
		ret = FUNC1(st->reg);
		goto error_unregister_map;
	}

	ret = FUNC18(st->reg);
	if (ret)
		goto error_unregister_map;

	/* this is only used for device removal purposes */
	FUNC7(client, indio_dev);

	st->chip_info = FUNC16(&client->dev);
	if (!st->chip_info)
		st->chip_info = &max1363_chip_info_tbl[id->driver_data];
	st->client = client;

	st->vref_uv = st->chip_info->int_vref_mv * 1000;
	vref = FUNC4(&client->dev, "vref");
	if (!FUNC0(vref)) {
		int vref_uv;

		ret = FUNC18(vref);
		if (ret)
			goto error_disable_reg;
		st->vref = vref;
		vref_uv = FUNC19(vref);
		if (vref_uv <= 0) {
			ret = -EINVAL;
			goto error_disable_reg;
		}
		st->vref_uv = vref_uv;
	}

	if (FUNC6(client->adapter, I2C_FUNC_I2C)) {
		st->send = i2c_master_send;
		st->recv = i2c_master_recv;
	} else if (FUNC6(client->adapter, I2C_FUNC_SMBUS_BYTE)
			&& st->chip_info->bits == 8) {
		st->send = max1363_smbus_send;
		st->recv = max1363_smbus_recv;
	} else {
		ret = -EOPNOTSUPP;
		goto error_disable_reg;
	}

	ret = FUNC14(indio_dev);
	if (ret)
		goto error_disable_reg;

	/* Establish that the iio_dev is a child of the i2c device */
	indio_dev->dev.parent = &client->dev;
	indio_dev->dev.of_node = client->dev.of_node;
	indio_dev->name = id->name;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = st->chip_info->num_channels;
	indio_dev->info = st->chip_info->info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	ret = FUNC15(st);
	if (ret < 0)
		goto error_disable_reg;

	ret = FUNC13(indio_dev, NULL,
		&max1363_trigger_handler, NULL);
	if (ret)
		goto error_disable_reg;

	if (client->irq) {
		ret = FUNC5(&client->dev, st->client->irq,
					   NULL,
					   &max1363_event_handler,
					   IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					   "max1363_event",
					   indio_dev);

		if (ret)
			goto error_uninit_buffer;
	}

	ret = FUNC8(indio_dev);
	if (ret < 0)
		goto error_uninit_buffer;

	return 0;

error_uninit_buffer:
	FUNC12(indio_dev);
error_disable_reg:
	if (st->vref)
		FUNC17(st->vref);
	FUNC17(st->reg);
error_unregister_map:
	FUNC10(indio_dev);
	return ret;
}