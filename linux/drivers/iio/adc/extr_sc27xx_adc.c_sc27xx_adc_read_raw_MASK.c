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
struct sc27xx_adc_data {int* channel_scale; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {size_t channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_PROCESSED 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 struct sc27xx_adc_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sc27xx_adc_data*,size_t,int,int*) ; 
 int FUNC4 (struct sc27xx_adc_data*,size_t,int,int*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan,
			       int *val, int *val2, long mask)
{
	struct sc27xx_adc_data *data = FUNC0(indio_dev);
	int scale = data->channel_scale[chan->channel];
	int ret, tmp;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC1(&indio_dev->mlock);
		ret = FUNC3(data, chan->channel, scale, &tmp);
		FUNC2(&indio_dev->mlock);

		if (ret)
			return ret;

		*val = tmp;
		return IIO_VAL_INT;

	case IIO_CHAN_INFO_PROCESSED:
		FUNC1(&indio_dev->mlock);
		ret = FUNC4(data, chan->channel, scale,
						&tmp);
		FUNC2(&indio_dev->mlock);

		if (ret)
			return ret;

		*val = tmp;
		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		*val = scale;
		return IIO_VAL_INT;

	default:
		return -EINVAL;
	}
}