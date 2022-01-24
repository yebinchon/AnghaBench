#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
struct adis16480 {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int gyro_max_scale; int gyro_max_val; int accel_max_scale; int accel_max_val; int temp_scale; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 int EINVAL ; 
#define  IIO_ACCEL 139 
#define  IIO_ANGL_VEL 138 
#define  IIO_CHAN_INFO_CALIBBIAS 137 
#define  IIO_CHAN_INFO_CALIBSCALE 136 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 135 
#define  IIO_CHAN_INFO_OFFSET 134 
#define  IIO_CHAN_INFO_RAW 133 
#define  IIO_CHAN_INFO_SAMP_FREQ 132 
#define  IIO_CHAN_INFO_SCALE 131 
#define  IIO_MAGN 130 
#define  IIO_PRESSURE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC1 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 int FUNC2 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 int FUNC3 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 int FUNC4 (struct iio_dev*,int*,int*) ; 
 int FUNC5 (struct iio_dev*,struct iio_chan_spec const*,int /*<<< orphan*/ ,int*) ; 
 struct adis16480* FUNC6 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, int *val, int *val2, long info)
{
	struct adis16480 *st = FUNC6(indio_dev);
	unsigned int temp;

	switch (info) {
	case IIO_CHAN_INFO_RAW:
		return FUNC5(indio_dev, chan, 0, val);
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_ANGL_VEL:
			*val = st->chip_info->gyro_max_scale;
			*val2 = st->chip_info->gyro_max_val;
			return IIO_VAL_FRACTIONAL;
		case IIO_ACCEL:
			*val = st->chip_info->accel_max_scale;
			*val2 = st->chip_info->accel_max_val;
			return IIO_VAL_FRACTIONAL;
		case IIO_MAGN:
			*val = 0;
			*val2 = 100; /* 0.0001 gauss */
			return IIO_VAL_INT_PLUS_MICRO;
		case IIO_TEMP:
			/*
			 * +85 degrees Celsius = temp_max_scale
			 * +25 degrees Celsius = 0
			 * LSB, 25 degrees Celsius  = 60 / temp_max_scale
			 */
			*val = st->chip_info->temp_scale / 1000;
			*val2 = (st->chip_info->temp_scale % 1000) * 1000;
			return IIO_VAL_INT_PLUS_MICRO;
		case IIO_PRESSURE:
			*val = 0;
			*val2 = 4000; /* 40ubar = 0.004 kPa */
			return IIO_VAL_INT_PLUS_MICRO;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_OFFSET:
		/* Only the temperature channel has a offset */
		temp = 25 * 1000000LL; /* 25 degree Celsius = 0x0000 */
		*val = FUNC0(temp, st->chip_info->temp_scale);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_CALIBBIAS:
		return FUNC1(indio_dev, chan, val);
	case IIO_CHAN_INFO_CALIBSCALE:
		return FUNC2(indio_dev, chan, val);
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		return FUNC3(indio_dev, chan, val);
	case IIO_CHAN_INFO_SAMP_FREQ:
		return FUNC4(indio_dev, val, val2);
	default:
		return -EINVAL;
	}
}