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
struct meson_sar_adc_priv {TYPE_1__* param; int /*<<< orphan*/  regmap; int /*<<< orphan*/  done; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_2__ {scalar_t__ resolution; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MESON_SAR_ADC_FIFO_RD ; 
 int /*<<< orphan*/  MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK ; 
 int /*<<< orphan*/  MESON_SAR_ADC_FIFO_RD_SAMPLE_VALUE_MASK ; 
 int /*<<< orphan*/  MESON_SAR_ADC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct meson_sar_adc_priv* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*,int) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
					 const struct iio_chan_spec *chan,
					 int *val)
{
	struct meson_sar_adc_priv *priv = FUNC3(indio_dev);
	int regval, fifo_chan, fifo_val, count;

	if(!FUNC8(&priv->done,
				FUNC6(MESON_SAR_ADC_TIMEOUT)))
		return -ETIMEDOUT;

	count = FUNC5(indio_dev);
	if (count != 1) {
		FUNC2(&indio_dev->dev,
			"ADC FIFO has %d element(s) instead of one\n", count);
		return -EINVAL;
	}

	FUNC7(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
	fifo_chan = FUNC0(MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK, regval);
	if (fifo_chan != chan->address) {
		FUNC2(&indio_dev->dev,
			"ADC FIFO entry belongs to channel %d instead of %lu\n",
			fifo_chan, chan->address);
		return -EINVAL;
	}

	fifo_val = FUNC0(MESON_SAR_ADC_FIFO_RD_SAMPLE_VALUE_MASK, regval);
	fifo_val &= FUNC1(priv->param->resolution - 1, 0);
	*val = FUNC4(indio_dev, fifo_val);

	return 0;
}