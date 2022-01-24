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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; int type; } ;
struct adis16480 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_ACCEL 131 
#define  IIO_ANGL_VEL 130 
#define  IIO_MAGN 129 
#define  IIO_PRESSURE 128 
 int IIO_VAL_INT ; 
 unsigned int* adis16480_calibbias_regs ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 struct adis16480* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, int *bias)
{
	unsigned int reg = adis16480_calibbias_regs[chan->scan_index];
	struct adis16480 *st = FUNC2(indio_dev);
	uint16_t val16;
	uint32_t val32;
	int ret;

	switch (chan->type) {
	case IIO_MAGN:
	case IIO_PRESSURE:
		ret = FUNC0(&st->adis, reg, &val16);
		*bias = FUNC3(val16, 15);
		break;
	case IIO_ANGL_VEL:
	case IIO_ACCEL:
		ret = FUNC1(&st->adis, reg, &val32);
		*bias = FUNC3(val32, 31);
		break;
	default:
			ret = -EINVAL;
	}

	if (ret < 0)
		return ret;

	return IIO_VAL_INT;
}