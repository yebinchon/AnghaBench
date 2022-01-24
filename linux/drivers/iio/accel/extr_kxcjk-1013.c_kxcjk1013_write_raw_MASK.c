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
struct kxcjk1013_data {int /*<<< orphan*/  mutex; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 struct kxcjk1013_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct kxcjk1013_data*,int,int) ; 
 int FUNC2 (struct kxcjk1013_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan, int val,
			       int val2, long mask)
{
	struct kxcjk1013_data *data = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		FUNC3(&data->mutex);
		ret = FUNC1(data, val, val2);
		FUNC4(&data->mutex);
		break;
	case IIO_CHAN_INFO_SCALE:
		if (val)
			return -EINVAL;

		FUNC3(&data->mutex);
		ret = FUNC2(data, val2);
		FUNC4(&data->mutex);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}