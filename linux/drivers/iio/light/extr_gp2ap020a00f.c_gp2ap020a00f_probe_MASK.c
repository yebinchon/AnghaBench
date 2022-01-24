#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_11__ {struct TYPE_11__* parent; } ;
struct iio_dev {TYPE_4__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_4__ dev; } ;
struct gp2ap020a00f_data {struct regmap* vled_reg; TYPE_2__* trig; int /*<<< orphan*/  work; struct i2c_client* client; int /*<<< orphan*/  lock; int /*<<< orphan*/  data_ready_queue; struct regmap* regmap; int /*<<< orphan*/  cur_opmode; } ;
struct TYPE_9__ {TYPE_4__* parent; } ;
struct TYPE_10__ {TYPE_1__ dev; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GP2AP020A00F_OPMODE_SHUTDOWN ; 
 int /*<<< orphan*/  GP2AP020A00F_OP_REG ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 struct iio_dev* FUNC4 (TYPE_4__*,int) ; 
 TYPE_2__* FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC7 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  gp2ap020a00f_buffer_setup_ops ; 
 int /*<<< orphan*/  gp2ap020a00f_channels ; 
 int /*<<< orphan*/  gp2ap020a00f_iio_trigger_work ; 
 int /*<<< orphan*/  gp2ap020a00f_info ; 
 int /*<<< orphan*/  gp2ap020a00f_reg_init_tab ; 
 int /*<<< orphan*/  gp2ap020a00f_regmap_config ; 
 int /*<<< orphan*/  gp2ap020a00f_thresh_event_handler ; 
 int /*<<< orphan*/  gp2ap020a00f_trigger_handler ; 
 int /*<<< orphan*/  gp2ap020a00f_trigger_ops ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct gp2ap020a00f_data* FUNC11 (struct iio_dev*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct iio_dev*) ; 
 int FUNC15 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct regmap*) ; 
 int FUNC21 (struct regmap*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct gp2ap020a00f_data *data;
	struct iio_dev *indio_dev;
	struct regmap *regmap;
	int err;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC11(indio_dev);

	data->vled_reg = FUNC7(&client->dev, "vled");
	if (FUNC1(data->vled_reg))
		return FUNC2(data->vled_reg);

	err = FUNC21(data->vled_reg);
	if (err)
		return err;

	regmap = FUNC6(client, &gp2ap020a00f_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "Regmap initialization failed.\n");
		err = FUNC2(regmap);
		goto error_regulator_disable;
	}

	/* Initialize device registers */
	err = FUNC19(regmap, GP2AP020A00F_OP_REG,
			gp2ap020a00f_reg_init_tab,
			FUNC0(gp2ap020a00f_reg_init_tab));

	if (err < 0) {
		FUNC3(&client->dev, "Device initialization failed.\n");
		goto error_regulator_disable;
	}

	FUNC9(client, indio_dev);

	data->client = client;
	data->cur_opmode = GP2AP020A00F_OPMODE_SHUTDOWN;
	data->regmap = regmap;
	FUNC17(&data->data_ready_queue);

	FUNC18(&data->lock);
	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = gp2ap020a00f_channels;
	indio_dev->num_channels = FUNC0(gp2ap020a00f_channels);
	indio_dev->info = &gp2ap020a00f_info;
	indio_dev->name = id->name;
	indio_dev->modes = INDIO_DIRECT_MODE;

	/* Allocate buffer */
	err = FUNC15(indio_dev, &iio_pollfunc_store_time,
		&gp2ap020a00f_trigger_handler, &gp2ap020a00f_buffer_setup_ops);
	if (err < 0)
		goto error_regulator_disable;

	/* Allocate trigger */
	data->trig = FUNC5(&client->dev, "%s-trigger",
							indio_dev->name);
	if (data->trig == NULL) {
		err = -ENOMEM;
		FUNC3(&indio_dev->dev, "Failed to allocate iio trigger.\n");
		goto error_uninit_buffer;
	}

	/* This needs to be requested here for read_raw calls to work. */
	err = FUNC22(client->irq, NULL,
				   &gp2ap020a00f_thresh_event_handler,
				   IRQF_TRIGGER_FALLING |
				   IRQF_ONESHOT,
				   "gp2ap020a00f_als_event",
				   indio_dev);
	if (err < 0) {
		FUNC3(&client->dev, "Irq request failed.\n");
		goto error_uninit_buffer;
	}

	data->trig->ops = &gp2ap020a00f_trigger_ops;
	data->trig->dev.parent = &data->client->dev;

	FUNC16(&data->work, gp2ap020a00f_iio_trigger_work);

	err = FUNC12(data->trig);
	if (err < 0) {
		FUNC3(&client->dev, "Failed to register iio trigger.\n");
		goto error_free_irq;
	}

	err = FUNC10(indio_dev);
	if (err < 0)
		goto error_trigger_unregister;

	return 0;

error_trigger_unregister:
	FUNC13(data->trig);
error_free_irq:
	FUNC8(client->irq, indio_dev);
error_uninit_buffer:
	FUNC14(indio_dev);
error_regulator_disable:
	FUNC20(data->vled_reg);

	return err;
}