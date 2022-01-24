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
struct max44009_data {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 long IIO_CHAN_INFO_INT_TIME ; 
 scalar_t__ IIO_LIGHT ; 
 struct max44009_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct max44009_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan, int val,
			      int val2, long mask)
{
	struct max44009_data *data = FUNC0(indio_dev);
	int ret;

	if (mask == IIO_CHAN_INFO_INT_TIME && chan->type == IIO_LIGHT) {
		FUNC2(&data->lock);
		ret = FUNC1(data, val, val2);
		FUNC3(&data->lock);
		return ret;
	}
	return -EINVAL;
}