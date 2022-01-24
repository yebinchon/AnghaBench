#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;
struct cm3323_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  client; } ;
struct TYPE_2__ {int val; int val2; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 129 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (struct cm3323_data*) ; 
 TYPE_1__* cm3323_int_time ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cm3323_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan, int *val,
			   int *val2, long mask)
{
	int ret;
	struct cm3323_data *data = FUNC2(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC3(&data->mutex);
		ret = FUNC1(data->client, chan->address);
		if (ret < 0) {
			FUNC4(&data->mutex);
			return ret;
		}
		*val = ret;
		FUNC4(&data->mutex);

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_INT_TIME:
		FUNC3(&data->mutex);
		ret = FUNC0(data);
		if (ret < 0) {
			FUNC4(&data->mutex);
			return ret;
		}

		*val = cm3323_int_time[ret].val;
		*val2 = cm3323_int_time[ret].val2;
		FUNC4(&data->mutex);

		return IIO_VAL_INT_PLUS_MICRO;
	default:
		return -EINVAL;
	}
}