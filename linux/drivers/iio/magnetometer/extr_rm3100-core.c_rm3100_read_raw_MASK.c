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
struct rm3100_data {int scale; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  scan_index; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct rm3100_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct rm3100_data*,int*,int*) ; 
 int FUNC4 (struct rm3100_data*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			   const struct iio_chan_spec *chan,
			   int *val, int *val2, long mask)
{
	struct rm3100_data *data = FUNC2(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC0(indio_dev);
		if (ret < 0)
			return ret;

		ret = FUNC4(data, chan->scan_index, val);
		FUNC1(indio_dev);

		return ret;
	case IIO_CHAN_INFO_SCALE:
		*val = 0;
		*val2 = data->scale;

		return IIO_VAL_INT_PLUS_MICRO;
	case IIO_CHAN_INFO_SAMP_FREQ:
		return FUNC3(data, val, val2);
	default:
		return -EINVAL;
	}
}