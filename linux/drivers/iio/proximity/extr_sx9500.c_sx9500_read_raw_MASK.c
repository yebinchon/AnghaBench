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
struct sx9500_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_PROXIMITY 128 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct sx9500_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct sx9500_data*,struct iio_chan_spec const*,int*) ; 
 int FUNC4 (struct sx9500_data*,int*,int*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			   const struct iio_chan_spec *chan,
			   int *val, int *val2, long mask)
{
	struct sx9500_data *data = FUNC2(indio_dev);
	int ret;

	switch (chan->type) {
	case IIO_PROXIMITY:
		switch (mask) {
		case IIO_CHAN_INFO_RAW:
			ret = FUNC0(indio_dev);
			if (ret)
				return ret;
			ret = FUNC3(data, chan, val);
			FUNC1(indio_dev);
			return ret;
		case IIO_CHAN_INFO_SAMP_FREQ:
			return FUNC4(data, val, val2);
		default:
			return -EINVAL;
		}
	default:
		return -EINVAL;
	}
}