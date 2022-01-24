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
struct stx104_iio {int* chan_out_states; int /*<<< orphan*/  base; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_HARDWAREGAIN 131 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 struct stx104_iio* FUNC1 (struct iio_dev*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int *val, int *val2, long mask)
{
	struct stx104_iio *const priv = FUNC1(indio_dev);
	unsigned int adc_config;
	int adbu;
	int gain;

	switch (mask) {
	case IIO_CHAN_INFO_HARDWAREGAIN:
		/* get gain configuration */
		adc_config = FUNC2(priv->base + 11);
		gain = adc_config & 0x3;

		*val = 1 << gain;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_RAW:
		if (chan->output) {
			*val = priv->chan_out_states[chan->channel];
			return IIO_VAL_INT;
		}

		/* select ADC channel */
		FUNC4(chan->channel | (chan->channel << 4), priv->base + 2);

		/* trigger ADC sample capture and wait for completion */
		FUNC4(0, priv->base);
		while (FUNC2(priv->base + 8) & FUNC0(7));

		*val = FUNC3(priv->base);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_OFFSET:
		/* get ADC bipolar/unipolar configuration */
		adc_config = FUNC2(priv->base + 11);
		adbu = !(adc_config & FUNC0(2));

		*val = -32768 * adbu;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		/* get ADC bipolar/unipolar and gain configuration */
		adc_config = FUNC2(priv->base + 11);
		adbu = !(adc_config & FUNC0(2));
		gain = adc_config & 0x3;

		*val = 5;
		*val2 = 15 - adbu + gain;
		return IIO_VAL_FRACTIONAL_LOG2;
	}

	return -EINVAL;
}