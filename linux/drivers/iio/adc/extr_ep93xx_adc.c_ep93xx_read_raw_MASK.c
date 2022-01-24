#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct iio_chan_spec {int address; int /*<<< orphan*/  channel; } ;
struct ep93xx_adc_priv {int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  lastch; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 scalar_t__ EP93XX_ADC_RESULT ; 
 int EP93XX_ADC_SDR ; 
 scalar_t__ EP93XX_ADC_SWITCH ; 
 scalar_t__ EP93XX_ADC_SW_LOCK ; 
 int ETIMEDOUT ; 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct ep93xx_adc_priv* FUNC4 (struct iio_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct iio_dev *iiodev,
			   struct iio_chan_spec const *channel, int *value,
			   int *shift, long mask)
{
	struct ep93xx_adc_priv *priv = FUNC4(iiodev);
	unsigned long timeout;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC8(&priv->lock);
		if (priv->lastch != channel->channel) {
			priv->lastch = channel->channel;
			/*
			 * Switch register is software-locked, unlocking must be
			 * immediately followed by write
			 */
			FUNC5();
			FUNC13(0xAA, priv->base + EP93XX_ADC_SW_LOCK);
			FUNC13(channel->address,
				       priv->base + EP93XX_ADC_SWITCH);
			FUNC6();
			/*
			 * Settling delay depends on module clock and could be
			 * 2ms or 500us
			 */
			FUNC3(2000, 2000);
		}
		/* Start the conversion, eventually discarding old result */
		FUNC10(priv->base + EP93XX_ADC_RESULT);
		/* Ensure maximum conversion rate is not exceeded */
		FUNC3(FUNC0(1000000, 925),
				 FUNC0(1000000, 925));
		/* At this point conversion must be completed, but anyway... */
		ret = IIO_VAL_INT;
		timeout = jiffies + FUNC7(1) + 1;
		while (1) {
			u32 t;

			t = FUNC10(priv->base + EP93XX_ADC_RESULT);
			if (t & EP93XX_ADC_SDR) {
				*value = FUNC11(t, 15);
				break;
			}

			if (FUNC12(jiffies, timeout)) {
				FUNC2(&iiodev->dev, "Conversion timeout\n");
				ret = -ETIMEDOUT;
				break;
			}

			FUNC1();
		}
		FUNC9(&priv->lock);
		return ret;

	case IIO_CHAN_INFO_OFFSET:
		/* According to datasheet, range is -25000..25000 */
		*value = 25000;
		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		/* Typical supply voltage is 3.3v */
		*value = (1ULL << 32) * 3300 / 50000;
		*shift = 32;
		return IIO_VAL_FRACTIONAL_LOG2;
	}

	return -EINVAL;
}