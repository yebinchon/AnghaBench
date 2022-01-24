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
struct bmc150_accel_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int FUNC0 (struct bmc150_accel_data*,int,int) ; 
 int FUNC1 (struct bmc150_accel_data*,int) ; 
 struct bmc150_accel_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				  struct iio_chan_spec const *chan,
				  int val, int val2, long mask)
{
	struct bmc150_accel_data *data = FUNC2(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		FUNC3(&data->mutex);
		ret = FUNC0(data, val, val2);
		FUNC4(&data->mutex);
		break;
	case IIO_CHAN_INFO_SCALE:
		if (val)
			return -EINVAL;

		FUNC3(&data->mutex);
		ret = FUNC1(data, val2);
		FUNC4(&data->mutex);
		return ret;
	default:
		ret = -EINVAL;
	}

	return ret;
}