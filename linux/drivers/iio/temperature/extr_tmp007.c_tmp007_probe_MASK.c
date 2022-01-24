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
struct tmp007_data {int config; int status_mask; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; TYPE_1__ dev; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  TMP007_CONFIG ; 
 int TMP007_CONFIG_ALERT_EN ; 
 int TMP007_CONFIG_CONV_EN ; 
 int TMP007_CONFIG_TC_EN ; 
 int TMP007_STATUS_LHF ; 
 int TMP007_STATUS_LLF ; 
 int /*<<< orphan*/  TMP007_STATUS_MASK ; 
 int TMP007_STATUS_OHF ; 
 int TMP007_STATUS_OLF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct iio_dev*) ; 
 struct tmp007_data* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp007_channels ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*) ; 
 int /*<<< orphan*/  tmp007_info ; 
 int /*<<< orphan*/  tmp007_interrupt_handler ; 
 int /*<<< orphan*/  FUNC12 (struct tmp007_data*) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *tmp007_id)
{
	struct tmp007_data *data;
	struct iio_dev *indio_dev;
	int ret;

	if (!FUNC4(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -EOPNOTSUPP;

	if (!FUNC11(client)) {
		FUNC1(&client->dev, "TMP007 not found\n");
		return -ENODEV;
	}

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC9(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;
	FUNC10(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = "tmp007";
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &tmp007_info;

	indio_dev->channels = tmp007_channels;
	indio_dev->num_channels = FUNC0(tmp007_channels);

	/*
	 * Set Configuration register:
	 * 1. Conversion ON
	 * 2. ALERT enable
	 * 3. Transient correction enable
	 */

	ret = FUNC6(data->client, TMP007_CONFIG);
	if (ret < 0)
		return ret;

	data->config = ret;
	data->config |= (TMP007_CONFIG_CONV_EN | TMP007_CONFIG_ALERT_EN | TMP007_CONFIG_TC_EN);

	ret = FUNC7(data->client, TMP007_CONFIG,
					data->config);
	if (ret < 0)
		return ret;

	/*
	 * Only the following flags can activate ALERT pin. Data conversion/validity flags
	 * flags can still be polled for getting temperature data
	 *
	 * Set Status Mask register:
	 * 1. Object temperature high limit enable
	 * 2. Object temperature low limit enable
	 * 3. TDIE temperature high limit enable
	 * 4. TDIE temperature low limit enable
	 */

	ret = FUNC6(data->client, TMP007_STATUS_MASK);
	if (ret < 0)
		goto error_powerdown;

	data->status_mask = ret;
	data->status_mask |= (TMP007_STATUS_OHF | TMP007_STATUS_OLF
				| TMP007_STATUS_LHF | TMP007_STATUS_LLF);

	ret = FUNC7(data->client, TMP007_STATUS_MASK, data->status_mask);
	if (ret < 0)
		goto error_powerdown;

	if (client->irq) {
		ret = FUNC3(&client->dev, client->irq,
				NULL, tmp007_interrupt_handler,
				IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				tmp007_id->name, indio_dev);
		if (ret) {
			FUNC1(&client->dev, "irq request error %d\n", -ret);
			goto error_powerdown;
		}
	}

	return FUNC8(indio_dev);

error_powerdown:
	FUNC12(data);

	return ret;
}