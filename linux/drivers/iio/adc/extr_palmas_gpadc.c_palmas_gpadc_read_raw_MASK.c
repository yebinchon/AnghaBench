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
struct palmas_gpadc {int /*<<< orphan*/  dev; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_PROCESSED 129 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int PALMAS_ADC_CH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct palmas_gpadc* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct palmas_gpadc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct palmas_gpadc*,int) ; 
 int FUNC6 (struct palmas_gpadc*,int) ; 
 int FUNC7 (struct palmas_gpadc*,int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int *val, int *val2, long mask)
{
	struct  palmas_gpadc *adc = FUNC1(indio_dev);
	int adc_chan = chan->channel;
	int ret = 0;

	if (adc_chan > PALMAS_ADC_CH_MAX)
		return -EINVAL;

	FUNC2(&indio_dev->mlock);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
	case IIO_CHAN_INFO_PROCESSED:
		ret = FUNC6(adc, adc_chan);
		if (ret < 0)
			goto out;

		ret = FUNC7(adc, adc_chan);
		if (ret < 0) {
			FUNC0(adc->dev,
			"ADC start conversion failed\n");
			goto out;
		}

		if (mask == IIO_CHAN_INFO_PROCESSED)
			ret = FUNC4(
							adc, adc_chan, ret);

		*val = ret;

		ret = IIO_VAL_INT;
		goto out;
	}

	FUNC3(&indio_dev->mlock);
	return ret;

out:
	FUNC5(adc, adc_chan);
	FUNC3(&indio_dev->mlock);

	return ret;
}