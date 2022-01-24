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
typedef  int /*<<< orphan*/  u8 ;
struct st_lsm6dsx_sensor {int odr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct st_lsm6dsx_sensor* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct st_lsm6dsx_sensor*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct st_lsm6dsx_sensor*,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *iio_dev,
				struct iio_chan_spec const *chan,
				int val, int val2, long mask)
{
	struct st_lsm6dsx_sensor *sensor = FUNC2(iio_dev);
	int err;

	err = FUNC0(iio_dev);
	if (err)
		return err;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		err = FUNC4(sensor, val2);
		break;
	case IIO_CHAN_INFO_SAMP_FREQ: {
		u8 data;

		err = FUNC3(sensor, val, &data);
		if (!err)
			sensor->odr = val;
		break;
	}
	default:
		err = -EINVAL;
		break;
	}

	FUNC1(iio_dev);

	return err;
}