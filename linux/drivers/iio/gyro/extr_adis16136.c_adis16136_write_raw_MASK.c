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
struct adis16136 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16136_REG_GYRO_OFF2 ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 129 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 128 
 int FUNC0 (struct iio_dev*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adis16136* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, int val, int val2, long info)
{
	struct adis16136 *adis16136 = FUNC2(indio_dev);

	switch (info) {
	case IIO_CHAN_INFO_CALIBBIAS:
		return FUNC1(&adis16136->adis,
			ADIS16136_REG_GYRO_OFF2, val);
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		return FUNC0(indio_dev, val);
	default:
		break;
	}

	return -EINVAL;
}