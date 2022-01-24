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
struct cm3323_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 128 
 int FUNC0 (struct cm3323_data*,int,int) ; 
 struct cm3323_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan, int val,
			    int val2, long mask)
{
	struct cm3323_data *data = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_INT_TIME:
		FUNC2(&data->mutex);
		ret = FUNC0(data, val, val2);
		FUNC3(&data->mutex);

		return ret;
	default:
		return -EINVAL;
	}
}