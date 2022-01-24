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
struct mma7660_data {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_NANO ; 
 struct mma7660_data* FUNC0 (struct iio_dev*) ; 
 int mma7660_nscale ; 
 int FUNC1 (struct mma7660_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int *val, int *val2, long mask)
{
	struct mma7660_data *data = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC2(&data->lock);
		ret = FUNC1(data, chan->address);
		FUNC3(&data->lock);
		if (ret < 0)
			return ret;
		*val = FUNC4(ret, 5);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 0;
		*val2 = mma7660_nscale;
		return IIO_VAL_INT_PLUS_NANO;
	default:
		return -EINVAL;
	}

	return -EINVAL;
}