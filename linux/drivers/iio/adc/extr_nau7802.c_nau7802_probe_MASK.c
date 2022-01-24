#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  unsigned long long u64 ;
typedef  int u32 ;
struct nau7802_state {int vref_mv; unsigned long long* scale_avail; int /*<<< orphan*/  data_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  sample_rate; struct i2c_client* client; int /*<<< orphan*/  value_ok; } ;
struct TYPE_7__ {struct device_node* of_node; TYPE_3__* parent; } ;
struct iio_dev {int num_channels; unsigned long long* channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {TYPE_2__* driver; struct device_node* of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (unsigned long long*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NAU7802_PUCTRL_AVDDS_BIT ; 
 int NAU7802_PUCTRL_CS_BIT ; 
 int NAU7802_PUCTRL_PUA_BIT ; 
 int NAU7802_PUCTRL_PUD_BIT ; 
 int NAU7802_PUCTRL_PUR_BIT ; 
 int NAU7802_PUCTRL_RR_BIT ; 
 int /*<<< orphan*/  NAU7802_REG_ADC_CTRL ; 
 int /*<<< orphan*/  NAU7802_REG_CTRL1 ; 
 int /*<<< orphan*/  NAU7802_REG_CTRL2 ; 
 int /*<<< orphan*/  NAU7802_REG_PUCTRL ; 
 int /*<<< orphan*/  NAU7802_SAMP_FREQ_320 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 struct iio_dev* FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct iio_dev*) ; 
 struct nau7802_state* FUNC13 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 unsigned long long* nau7802_chan_array ; 
 int /*<<< orphan*/  nau7802_eoc_trigger ; 
 int /*<<< orphan*/  nau7802_info ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*,char*,int*) ; 
 int FUNC18 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct nau7802_state *st;
	struct device_node *np = client->dev.of_node;
	int i, ret;
	u8 data;
	u32 tmp = 0;

	if (!client->dev.of_node) {
		FUNC3(&client->dev, "No device tree node available.\n");
		return -EINVAL;
	}

	indio_dev = FUNC6(&client->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC13(indio_dev);

	FUNC9(client, indio_dev);

	indio_dev->dev.parent = &client->dev;
	indio_dev->dev.of_node = client->dev.of_node;
	indio_dev->name = FUNC5(&client->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &nau7802_info;

	st->client = client;

	/* Reset the device */
	ret = FUNC11(st->client, NAU7802_REG_PUCTRL,
				  NAU7802_PUCTRL_RR_BIT);
	if (ret < 0)
		return ret;

	/* Enter normal operation mode */
	ret = FUNC11(st->client, NAU7802_REG_PUCTRL,
				  NAU7802_PUCTRL_PUD_BIT);
	if (ret < 0)
		return ret;

	/*
	 * After about 200 usecs, the device should be ready and then
	 * the Power Up bit will be set to 1. If not, wait for it.
	 */
	FUNC19(210);
	ret = FUNC10(st->client, NAU7802_REG_PUCTRL);
	if (ret < 0)
		return ret;
	if (!(ret & NAU7802_PUCTRL_PUR_BIT))
		return ret;

	FUNC17(np, "nuvoton,vldo", &tmp);
	st->vref_mv = tmp;

	data = NAU7802_PUCTRL_PUD_BIT | NAU7802_PUCTRL_PUA_BIT |
		NAU7802_PUCTRL_CS_BIT;
	if (tmp >= 2400)
		data |= NAU7802_PUCTRL_AVDDS_BIT;

	ret = FUNC11(st->client, NAU7802_REG_PUCTRL, data);
	if (ret < 0)
		return ret;
	ret = FUNC11(st->client, NAU7802_REG_ADC_CTRL, 0x30);
	if (ret < 0)
		return ret;

	if (tmp >= 2400) {
		data = FUNC1((4500 - tmp) / 300);
		ret = FUNC11(st->client, NAU7802_REG_CTRL1,
						data);
		if (ret < 0)
			return ret;
	}

	/* Populate available ADC input ranges */
	for (i = 0; i < FUNC0(st->scale_avail); i++)
		st->scale_avail[i] = (((u64)st->vref_mv) * 1000000000ULL)
					   >> (23 + i);

	FUNC14(&st->value_ok);

	/*
	 * The ADC fires continuously and we can't do anything about
	 * it. So we need to have the IRQ disabled by default, and we
	 * will enable them back when we will need them..
	 */
	if (client->irq) {
		ret = FUNC18(client->irq,
				NULL,
				nau7802_eoc_trigger,
				IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
				client->dev.driver->name,
				indio_dev);
		if (ret) {
			/*
			 * What may happen here is that our IRQ controller is
			 * not able to get level interrupt but this is required
			 * by this ADC as when going over 40 sample per second,
			 * the interrupt line may stay high between conversions.
			 * So, we continue no matter what but we switch to
			 * polling mode.
			 */
			FUNC4(&client->dev,
				"Failed to allocate IRQ, using polling mode\n");
			client->irq = 0;
		} else
			FUNC7(client->irq);
	}

	if (!client->irq) {
		/*
		 * We are polling, use the fastest sample rate by
		 * default
		 */
		st->sample_rate = NAU7802_SAMP_FREQ_320;
		ret = FUNC11(st->client, NAU7802_REG_CTRL2,
					  FUNC2(st->sample_rate));
		if (ret)
			goto error_free_irq;
	}

	/* Setup the ADC channels available on the board */
	indio_dev->num_channels = FUNC0(nau7802_chan_array);
	indio_dev->channels = nau7802_chan_array;

	FUNC16(&st->lock);
	FUNC16(&st->data_lock);

	ret = FUNC12(indio_dev);
	if (ret < 0) {
		FUNC3(&client->dev, "Couldn't register the device.\n");
		goto error_device_register;
	}

	return 0;

error_device_register:
	FUNC15(&st->lock);
	FUNC15(&st->data_lock);
error_free_irq:
	if (client->irq)
		FUNC8(client->irq, indio_dev);

	return ret;
}