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
struct tsl4531_data {int int_time; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 128 
 int /*<<< orphan*/  TSL4531_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tsl4531_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct tsl4531_data *data = FUNC1(indio_dev);
	int int_time, ret;

	switch (mask) {
	case IIO_CHAN_INFO_INT_TIME:
		if (val != 0)
			return -EINVAL;
		if (val2 == 400000)
			int_time = 0;
		else if (val2 == 200000)
			int_time = 1;
		else if (val2 == 100000)
			int_time = 2;
		else
			return -EINVAL;
		FUNC2(&data->lock);
		ret = FUNC0(data->client,
			TSL4531_CONFIG, int_time);
		if (ret >= 0)
			data->int_time = int_time;
		FUNC3(&data->lock);
		return ret;
	default:
		return -EINVAL;
	}
}