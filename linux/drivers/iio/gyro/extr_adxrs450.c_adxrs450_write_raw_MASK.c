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
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADXRS450_DNC1 ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 128 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int val,
			      int val2,
			      long mask)
{
	int ret;
	switch (mask) {
	case IIO_CHAN_INFO_CALIBBIAS:
		if (val < -0x400 || val >= 0x400)
			return -EINVAL;
		ret = FUNC0(indio_dev,
						ADXRS450_DNC1, val);
		break;
	default:
		ret = -EINVAL;
		break;
	}
	return ret;
}