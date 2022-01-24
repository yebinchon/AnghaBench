#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct of_device_id {int /*<<< orphan*/  compatible; TYPE_2__* data; } ;
struct mma8452_data {int data_cfg; int ctrl_reg1; void* vdd_reg; void* vddio_reg; int /*<<< orphan*/  sleep_val; TYPE_2__* chip_info; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_14__ {TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct TYPE_16__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int irq; TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_15__ {int chip_id; int all_events; int enabled_events; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
#define  FXLS8471_DEVICE_ID 133 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
#define  MMA8451_DEVICE_ID 132 
 int /*<<< orphan*/  MMA8452_AUTO_SUSPEND_DELAY_MS ; 
 int MMA8452_CTRL_ACTIVE ; 
 int MMA8452_CTRL_DR_DEFAULT ; 
 int MMA8452_CTRL_DR_SHIFT ; 
 int /*<<< orphan*/  MMA8452_CTRL_REG1 ; 
 int /*<<< orphan*/  MMA8452_CTRL_REG4 ; 
 int /*<<< orphan*/  MMA8452_CTRL_REG5 ; 
 int /*<<< orphan*/  MMA8452_DATA_CFG ; 
 int MMA8452_DATA_CFG_FS_2G ; 
#define  MMA8452_DEVICE_ID 131 
 int /*<<< orphan*/  MMA8452_TRANSIENT_THS ; 
 int MMA8452_TRANSIENT_THS_MASK ; 
 int /*<<< orphan*/  MMA8452_WHO_AM_I ; 
#define  MMA8453_DEVICE_ID 130 
#define  MMA8652_DEVICE_ID 129 
#define  MMA8653_DEVICE_ID 128 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ,int) ; 
 struct iio_dev* FUNC5 (TYPE_3__*,int) ; 
 void* FUNC6 (TYPE_3__*,char*) ; 
 int FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct iio_dev*) ; 
 struct mma8452_data* FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct iio_dev*) ; 
 int FUNC14 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct mma8452_data*) ; 
 int /*<<< orphan*/  mma8452_dt_ids ; 
 int /*<<< orphan*/  mma8452_info ; 
 int /*<<< orphan*/  mma8452_interrupt ; 
 int FUNC16 (struct i2c_client*) ; 
 int /*<<< orphan*/  mma8452_scan_masks ; 
 int FUNC17 (struct mma8452_data*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct iio_dev*) ; 
 int /*<<< orphan*/  mma8452_trigger_handler ; 
 int FUNC19 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,char*) ; 
 struct of_device_id* FUNC22 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int FUNC24 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (void*) ; 
 int FUNC28 (void*) ; 

__attribute__((used)) static int FUNC29(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct mma8452_data *data;
	struct iio_dev *indio_dev;
	int ret;
	const struct of_device_id *match;

	match = FUNC22(mma8452_dt_ids, &client->dev);
	if (!match) {
		FUNC3(&client->dev, "unknown device model\n");
		return -ENODEV;
	}

	indio_dev = FUNC5(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC12(indio_dev);
	data->client = client;
	FUNC20(&data->lock);
	data->chip_info = match->data;

	data->vdd_reg = FUNC6(&client->dev, "vdd");
	if (FUNC0(data->vdd_reg)) {
		if (FUNC1(data->vdd_reg) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC3(&client->dev, "failed to get VDD regulator!\n");
		return FUNC1(data->vdd_reg);
	}

	data->vddio_reg = FUNC6(&client->dev, "vddio");
	if (FUNC0(data->vddio_reg)) {
		if (FUNC1(data->vddio_reg) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC3(&client->dev, "failed to get VDDIO regulator!\n");
		return FUNC1(data->vddio_reg);
	}

	ret = FUNC28(data->vdd_reg);
	if (ret) {
		FUNC3(&client->dev, "failed to enable VDD regulator!\n");
		return ret;
	}

	ret = FUNC28(data->vddio_reg);
	if (ret) {
		FUNC3(&client->dev, "failed to enable VDDIO regulator!\n");
		goto disable_regulator_vdd;
	}

	ret = FUNC9(client, MMA8452_WHO_AM_I);
	if (ret < 0)
		goto disable_regulators;

	switch (ret) {
	case MMA8451_DEVICE_ID:
	case MMA8452_DEVICE_ID:
	case MMA8453_DEVICE_ID:
	case MMA8652_DEVICE_ID:
	case MMA8653_DEVICE_ID:
	case FXLS8471_DEVICE_ID:
		if (ret == data->chip_info->chip_id)
			break;
		/* fall through */
	default:
		ret = -ENODEV;
		goto disable_regulators;
	}

	FUNC4(&client->dev, "registering %s accelerometer; ID 0x%x\n",
		 match->compatible, data->chip_info->chip_id);

	FUNC8(client, indio_dev);
	indio_dev->info = &mma8452_info;
	indio_dev->name = id->name;
	indio_dev->dev.parent = &client->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = data->chip_info->channels;
	indio_dev->num_channels = data->chip_info->num_channels;
	indio_dev->available_scan_masks = mma8452_scan_masks;

	ret = FUNC16(client);
	if (ret < 0)
		goto disable_regulators;

	data->data_cfg = MMA8452_DATA_CFG_FS_2G;
	ret = FUNC10(client, MMA8452_DATA_CFG,
					data->data_cfg);
	if (ret < 0)
		goto disable_regulators;

	/*
	 * By default set transient threshold to max to avoid events if
	 * enabling without configuring threshold.
	 */
	ret = FUNC10(client, MMA8452_TRANSIENT_THS,
					MMA8452_TRANSIENT_THS_MASK);
	if (ret < 0)
		goto disable_regulators;

	if (client->irq) {
		int irq2;

		irq2 = FUNC21(client->dev.of_node, "INT2");

		if (irq2 == client->irq) {
			FUNC2(&client->dev, "using interrupt line INT2\n");
		} else {
			ret = FUNC10(client,
						MMA8452_CTRL_REG5,
						data->chip_info->all_events);
			if (ret < 0)
				goto disable_regulators;

			FUNC2(&client->dev, "using interrupt line INT1\n");
		}

		ret = FUNC10(client,
					MMA8452_CTRL_REG4,
					data->chip_info->enabled_events);
		if (ret < 0)
			goto disable_regulators;

		ret = FUNC19(indio_dev);
		if (ret < 0)
			goto disable_regulators;
	}

	data->ctrl_reg1 = MMA8452_CTRL_ACTIVE |
			  (MMA8452_CTRL_DR_DEFAULT << MMA8452_CTRL_DR_SHIFT);

	data->sleep_val = FUNC15(data);

	ret = FUNC10(client, MMA8452_CTRL_REG1,
					data->ctrl_reg1);
	if (ret < 0)
		goto trigger_cleanup;

	ret = FUNC14(indio_dev, NULL,
					 mma8452_trigger_handler, NULL);
	if (ret < 0)
		goto trigger_cleanup;

	if (client->irq) {
		ret = FUNC7(&client->dev,
						client->irq,
						NULL, mma8452_interrupt,
						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
						client->name, indio_dev);
		if (ret)
			goto buffer_cleanup;
	}

	ret = FUNC24(&client->dev);
	if (ret < 0)
		goto buffer_cleanup;

	FUNC23(&client->dev);
	FUNC25(&client->dev,
					 MMA8452_AUTO_SUSPEND_DELAY_MS);
	FUNC26(&client->dev);

	ret = FUNC11(indio_dev);
	if (ret < 0)
		goto buffer_cleanup;

	ret = FUNC17(data, false);
	if (ret < 0)
		goto buffer_cleanup;

	return 0;

buffer_cleanup:
	FUNC13(indio_dev);

trigger_cleanup:
	FUNC18(indio_dev);

disable_regulators:
	FUNC27(data->vddio_reg);

disable_regulator_vdd:
	FUNC27(data->vdd_reg);

	return ret;
}