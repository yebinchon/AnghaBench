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
struct max31856_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel2; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SCALE 129 
#define  IIO_MOD_TEMP_AMBIENT 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 struct max31856_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct max31856_data*,struct iio_chan_spec const*,int*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int *val, int *val2, long mask)
{
	struct max31856_data *data = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC1(data, chan, val);
		if (ret)
			return ret;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		switch (chan->channel2) {
		case IIO_MOD_TEMP_AMBIENT:
			/* Cold junction Temp. Data resolution is 0.015625 */
			*val = 15;
			*val2 = 625000; /* 1000 * 0.015625 */
			ret = IIO_VAL_INT_PLUS_MICRO;
			break;
		default:
			/* Thermocouple Temp. Data resolution is 0.0078125 */
			*val = 7;
			*val2 = 812500; /* 1000 * 0.0078125) */
			return IIO_VAL_INT_PLUS_MICRO;
		}
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}