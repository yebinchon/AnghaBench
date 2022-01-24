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
struct iio_chan_spec {int /*<<< orphan*/  type; int /*<<< orphan*/  scan_index; } ;
struct fxas21002c_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FXAS21002C_SCALE_FRACTIONAL ; 
#define  IIO_ANGL_VEL 134 
#define  IIO_CHAN_INFO_HIGH_PASS_FILTER_3DB_FREQUENCY 133 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 132 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SAMP_FREQ 130 
#define  IIO_CHAN_INFO_SCALE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_FRACTIONAL ; 
 int FUNC0 (struct fxas21002c_data*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct fxas21002c_data*,int*) ; 
 int FUNC2 (struct fxas21002c_data*,int*) ; 
 int FUNC3 (struct fxas21002c_data*,int*) ; 
 int FUNC4 (struct fxas21002c_data*,int*) ; 
 int FUNC5 (struct fxas21002c_data*,int*) ; 
 struct fxas21002c_data* FUNC6 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan, int *val,
			       int *val2, long mask)
{
	struct fxas21002c_data *data = FUNC6(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		switch (chan->type) {
		case IIO_TEMP:
			return FUNC5(data, val);
		case IIO_ANGL_VEL:
			return FUNC0(data, chan->scan_index, val);
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_ANGL_VEL:
			*val2 = FXAS21002C_SCALE_FRACTIONAL;
			ret = FUNC4(data, val);
			if (ret < 0)
				return ret;

			return IIO_VAL_FRACTIONAL;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		*val = 0;
		return FUNC2(data, val2);
	case IIO_CHAN_INFO_HIGH_PASS_FILTER_3DB_FREQUENCY:
		*val = 0;
		return FUNC1(data, val2);
	case IIO_CHAN_INFO_SAMP_FREQ:
		*val2 = 0;
		return FUNC3(data, val);
	default:
		return -EINVAL;
	}
}