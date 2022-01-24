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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int /*<<< orphan*/  type; } ;
struct hdc100x_data {int* adc_int_us; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 131 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  IIO_CURRENT ; 
 int /*<<< orphan*/  IIO_TEMP ; 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (struct hdc100x_data*) ; 
 int FUNC1 (struct hdc100x_data*,struct iio_chan_spec const*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct hdc100x_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan, int *val,
			    int *val2, long mask)
{
	struct hdc100x_data *data = FUNC4(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW: {
		int ret;

		FUNC5(&data->lock);
		if (chan->type == IIO_CURRENT) {
			*val = FUNC0(data);
			ret = IIO_VAL_INT;
		} else {
			ret = FUNC2(indio_dev);
			if (ret) {
				FUNC6(&data->lock);
				return ret;
			}

			ret = FUNC1(data, chan);
			FUNC3(indio_dev);
			if (ret >= 0) {
				*val = ret;
				ret = IIO_VAL_INT;
			}
		}
		FUNC6(&data->lock);
		return ret;
	}
	case IIO_CHAN_INFO_INT_TIME:
		*val = 0;
		*val2 = data->adc_int_us[chan->address];
		return IIO_VAL_INT_PLUS_MICRO;
	case IIO_CHAN_INFO_SCALE:
		if (chan->type == IIO_TEMP) {
			*val = 165000;
			*val2 = 65536;
			return IIO_VAL_FRACTIONAL;
		} else {
			*val = 100;
			*val2 = 65536;
			return IIO_VAL_FRACTIONAL;
		}
		break;
	case IIO_CHAN_INFO_OFFSET:
		*val = -15887;
		*val2 = 515151;
		return IIO_VAL_INT_PLUS_MICRO;
	default:
		return -EINVAL;
	}
}