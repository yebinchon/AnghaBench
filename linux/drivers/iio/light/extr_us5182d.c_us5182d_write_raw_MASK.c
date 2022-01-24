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
struct us5182d_data {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_SCALE 128 
 struct us5182d_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct us5182d_data*,int) ; 
 int* us5182d_scales ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan, int val,
			     int val2, long mask)
{
	struct us5182d_data *data = FUNC1(indio_dev);
	int ret, i;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		if (val != 0)
			return -EINVAL;
		for (i = 0; i < FUNC0(us5182d_scales); i++)
			if (val2 == us5182d_scales[i]) {
				FUNC2(&data->lock);
				ret = FUNC4(data, i);
				FUNC3(&data->lock);
				return ret;
			}
		break;
	default:
		return -EINVAL;
	}

	return -EINVAL;
}