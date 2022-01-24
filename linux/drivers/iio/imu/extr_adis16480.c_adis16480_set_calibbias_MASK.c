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
struct iio_chan_spec {size_t scan_index; int type; } ;
struct adis16480 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_ACCEL 131 
#define  IIO_ANGL_VEL 130 
#define  IIO_MAGN 129 
#define  IIO_PRESSURE 128 
 unsigned int* adis16480_calibbias_regs ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,int) ; 
 struct adis16480* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, int bias)
{
	unsigned int reg = adis16480_calibbias_regs[chan->scan_index];
	struct adis16480 *st = FUNC2(indio_dev);

	switch (chan->type) {
	case IIO_MAGN:
	case IIO_PRESSURE:
		if (bias < -0x8000 || bias >= 0x8000)
			return -EINVAL;
		return FUNC0(&st->adis, reg, bias);
	case IIO_ANGL_VEL:
	case IIO_ACCEL:
		return FUNC1(&st->adis, reg, bias);
	default:
		break;
	}

	return -EINVAL;
}