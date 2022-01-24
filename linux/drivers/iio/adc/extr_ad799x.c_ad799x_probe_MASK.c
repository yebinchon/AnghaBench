#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; scalar_t__ info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  name; TYPE_3__ dev; } ;
struct ad799x_state {size_t id; int config; void* reg; void* vref; TYPE_2__* chip_config; struct i2c_client* client; } ;
struct TYPE_7__ {int /*<<< orphan*/  default_config; int /*<<< orphan*/  channel; scalar_t__ info; } ;
struct ad799x_chip_info {int /*<<< orphan*/  num_channels; TYPE_2__ noirq_config; TYPE_2__ irq_config; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 struct ad799x_chip_info* ad799x_chip_info_tbl ; 
 int /*<<< orphan*/  ad799x_event_handler ; 
 int FUNC2 (struct ad799x_state*) ; 
 int /*<<< orphan*/  ad799x_trigger_handler ; 
 int FUNC3 (struct ad799x_state*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC4 (TYPE_3__*,int) ; 
 void* FUNC5 (TYPE_3__*,char*) ; 
 int FUNC6 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*) ; 
 struct ad799x_state* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct iio_dev*) ; 
 int FUNC11 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int FUNC13 (void*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
				   const struct i2c_device_id *id)
{
	int ret;
	struct ad799x_state *st;
	struct iio_dev *indio_dev;
	const struct ad799x_chip_info *chip_info =
		&ad799x_chip_info_tbl[id->driver_data];

	indio_dev = FUNC4(&client->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC9(indio_dev);
	/* this is only used for device removal purposes */
	FUNC7(client, indio_dev);

	st->id = id->driver_data;
	if (client->irq > 0 && chip_info->irq_config.info)
		st->chip_config = &chip_info->irq_config;
	else
		st->chip_config = &chip_info->noirq_config;

	/* TODO: Add pdata options for filtering and bit delay */

	st->reg = FUNC5(&client->dev, "vcc");
	if (FUNC0(st->reg))
		return FUNC1(st->reg);
	ret = FUNC13(st->reg);
	if (ret)
		return ret;
	st->vref = FUNC5(&client->dev, "vref");
	if (FUNC0(st->vref)) {
		ret = FUNC1(st->vref);
		goto error_disable_reg;
	}
	ret = FUNC13(st->vref);
	if (ret)
		goto error_disable_reg;

	st->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->dev.of_node = client->dev.of_node;
	indio_dev->name = id->name;
	indio_dev->info = st->chip_config->info;

	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->chip_config->channel;
	indio_dev->num_channels = chip_info->num_channels;

	ret = FUNC3(st, st->chip_config->default_config);
	if (ret < 0)
		goto error_disable_vref;
	ret = FUNC2(st);
	if (ret < 0)
		goto error_disable_vref;
	st->config = ret;

	ret = FUNC11(indio_dev, NULL,
		&ad799x_trigger_handler, NULL);
	if (ret)
		goto error_disable_vref;

	if (client->irq > 0) {
		ret = FUNC6(&client->dev,
						client->irq,
						NULL,
						ad799x_event_handler,
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						client->name,
						indio_dev);
		if (ret)
			goto error_cleanup_ring;
	}
	ret = FUNC8(indio_dev);
	if (ret)
		goto error_cleanup_ring;

	return 0;

error_cleanup_ring:
	FUNC10(indio_dev);
error_disable_vref:
	FUNC12(st->vref);
error_disable_reg:
	FUNC12(st->reg);

	return ret;
}