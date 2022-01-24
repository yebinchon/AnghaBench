#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; int /*<<< orphan*/  modes; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct afe4404_data {scalar_t__ irq; int /*<<< orphan*/  regulator; TYPE_3__* trig; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * fields; } ;
struct TYPE_9__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_10__ {TYPE_2__ dev; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE4404_DRIVER_NAME ; 
 int /*<<< orphan*/  AFE440X_CONTROL0 ; 
 int /*<<< orphan*/  AFE440X_CONTROL0_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int F_MAX_FIELDS ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afe4404_channels ; 
 int /*<<< orphan*/  afe4404_iio_info ; 
 int /*<<< orphan*/ * afe4404_reg_fields ; 
 int /*<<< orphan*/  afe4404_reg_sequences ; 
 int /*<<< orphan*/  afe4404_regmap_config ; 
 int /*<<< orphan*/  afe4404_trigger_handler ; 
 int /*<<< orphan*/  afe4404_trigger_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct afe4404_data* FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_trigger_generic_data_rdy_poll ; 
 int FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (struct iio_dev*) ; 
 int FUNC17 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct afe4404_data *afe;
	int i, ret;

	indio_dev = FUNC4(&client->dev, sizeof(*afe));
	if (!indio_dev)
		return -ENOMEM;

	afe = FUNC12(indio_dev);
	FUNC10(client, indio_dev);

	afe->dev = &client->dev;
	afe->irq = client->irq;

	afe->regmap = FUNC7(client, &afe4404_regmap_config);
	if (FUNC1(afe->regmap)) {
		FUNC3(afe->dev, "Unable to allocate register map\n");
		return FUNC2(afe->regmap);
	}

	for (i = 0; i < F_MAX_FIELDS; i++) {
		afe->fields[i] = FUNC6(afe->dev, afe->regmap,
							 afe4404_reg_fields[i]);
		if (FUNC1(afe->fields[i])) {
			FUNC3(afe->dev, "Unable to allocate regmap fields\n");
			return FUNC2(afe->fields[i]);
		}
	}

	afe->regulator = FUNC8(afe->dev, "tx_sup");
	if (FUNC1(afe->regulator)) {
		FUNC3(afe->dev, "Unable to get regulator\n");
		return FUNC2(afe->regulator);
	}
	ret = FUNC21(afe->regulator);
	if (ret) {
		FUNC3(afe->dev, "Unable to enable regulator\n");
		return ret;
	}

	ret = FUNC19(afe->regmap, AFE440X_CONTROL0,
			   AFE440X_CONTROL0_SW_RESET);
	if (ret) {
		FUNC3(afe->dev, "Unable to reset device\n");
		goto disable_reg;
	}

	ret = FUNC18(afe->regmap, afe4404_reg_sequences,
				     FUNC0(afe4404_reg_sequences));
	if (ret) {
		FUNC3(afe->dev, "Unable to set register defaults\n");
		goto disable_reg;
	}

	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->dev.parent = afe->dev;
	indio_dev->channels = afe4404_channels;
	indio_dev->num_channels = FUNC0(afe4404_channels);
	indio_dev->name = AFE4404_DRIVER_NAME;
	indio_dev->info = &afe4404_iio_info;

	if (afe->irq > 0) {
		afe->trig = FUNC5(afe->dev,
						   "%s-dev%d",
						   indio_dev->name,
						   indio_dev->id);
		if (!afe->trig) {
			FUNC3(afe->dev, "Unable to allocate IIO trigger\n");
			ret = -ENOMEM;
			goto disable_reg;
		}

		FUNC14(afe->trig, indio_dev);

		afe->trig->ops = &afe4404_trigger_ops;
		afe->trig->dev.parent = afe->dev;

		ret = FUNC13(afe->trig);
		if (ret) {
			FUNC3(afe->dev, "Unable to register IIO trigger\n");
			goto disable_reg;
		}

		ret = FUNC9(afe->dev, afe->irq,
						iio_trigger_generic_data_rdy_poll,
						NULL, IRQF_ONESHOT,
						AFE4404_DRIVER_NAME,
						afe->trig);
		if (ret) {
			FUNC3(afe->dev, "Unable to request IRQ\n");
			goto disable_reg;
		}
	}

	ret = FUNC17(indio_dev, &iio_pollfunc_store_time,
					 afe4404_trigger_handler, NULL);
	if (ret) {
		FUNC3(afe->dev, "Unable to setup buffer\n");
		goto unregister_trigger;
	}

	ret = FUNC11(indio_dev);
	if (ret) {
		FUNC3(afe->dev, "Unable to register IIO device\n");
		goto unregister_triggered_buffer;
	}

	return 0;

unregister_triggered_buffer:
	FUNC16(indio_dev);
unregister_trigger:
	if (afe->irq > 0)
		FUNC15(afe->trig);
disable_reg:
	FUNC20(afe->regulator);

	return ret;
}