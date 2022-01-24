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
typedef  int /*<<< orphan*/  uint32_t ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
struct adis16136 {int /*<<< orphan*/  adis; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int precision; int fullscale; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16136_REG_GYRO_OFF2 ; 
 int EINVAL ; 
#define  IIO_ANGL_VEL 133 
#define  IIO_CHAN_INFO_CALIBBIAS 132 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SCALE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (struct iio_dev*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iio_dev*,struct iio_chan_spec const*,int /*<<< orphan*/ ,int*) ; 
 struct adis16136* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, int *val, int *val2, long info)
{
	struct adis16136 *adis16136 = FUNC3(indio_dev);
	uint32_t val32;
	int ret;

	switch (info) {
	case IIO_CHAN_INFO_RAW:
		return FUNC2(indio_dev, chan, 0, val);
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_ANGL_VEL:
			*val = adis16136->chip_info->precision;
			*val2 = (adis16136->chip_info->fullscale << 16);
			return IIO_VAL_FRACTIONAL;
		case IIO_TEMP:
			*val = 10;
			*val2 = 697000; /* 0.010697 degree Celsius */
			return IIO_VAL_INT_PLUS_MICRO;
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_CALIBBIAS:
		ret = FUNC1(&adis16136->adis,
			ADIS16136_REG_GYRO_OFF2, &val32);
		if (ret < 0)
			return ret;

		*val = FUNC4(val32, 31);

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		return FUNC0(indio_dev, val);
	default:
		return -EINVAL;
	}
}