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
struct max44009_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 130 
#define  IIO_CHAN_INFO_PROCESSED 129 
#define  IIO_LIGHT 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT_PLUS_NANO ; 
 int MAX44009_SCALE_DENOMINATOR ; 
 int MAX44009_SCALE_NUMERATOR ; 
 struct max44009_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct max44009_data*) ; 
 int FUNC2 (struct max44009_data*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan, int *val,
			     int *val2, long mask)
{
	struct max44009_data *data = FUNC0(indio_dev);
	int lux_raw;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_PROCESSED:
		switch (chan->type) {
		case IIO_LIGHT:
			ret = FUNC2(data);
			if (ret < 0)
				return ret;
			lux_raw = ret;

			*val = lux_raw * MAX44009_SCALE_NUMERATOR;
			*val2 = MAX44009_SCALE_DENOMINATOR;
			return IIO_VAL_FRACTIONAL;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_INT_TIME:
		switch (chan->type) {
		case IIO_LIGHT:
			ret = FUNC1(data);
			if (ret < 0)
				return ret;

			*val2 = ret;
			*val = 0;
			return IIO_VAL_INT_PLUS_NANO;
		default:
			return -EINVAL;
		}
	default:
		return -EINVAL;
	}
}