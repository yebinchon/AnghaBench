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
struct rpr0521_data {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 struct rpr0521_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rpr0521_data*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct rpr0521_data*,int) ; 
 int FUNC5 (struct rpr0521_data*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan, int val,
			     int val2, long mask)
{
	struct rpr0521_data *data = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		FUNC1(&data->lock);
		ret = FUNC3(data, chan->address, val, val2);
		FUNC2(&data->lock);

		return ret;

	case IIO_CHAN_INFO_SAMP_FREQ:
		FUNC1(&data->lock);
		ret = FUNC5(data, chan->type,
						     val, val2);
		FUNC2(&data->lock);

		return ret;

	case IIO_CHAN_INFO_OFFSET:
		FUNC1(&data->lock);
		ret = FUNC4(data, val);
		FUNC2(&data->lock);

		return ret;

	default:
		return -EINVAL;
	}
}