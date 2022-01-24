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
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct hx711_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  gain_set; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_NANO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hx711_data*,int /*<<< orphan*/ ) ; 
 struct hx711_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				const struct iio_chan_spec *chan,
				int *val, int *val2, long mask)
{
	struct hx711_data *hx711_data = FUNC2(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC3(&hx711_data->lock);

		*val = FUNC1(hx711_data, chan->channel);

		FUNC4(&hx711_data->lock);

		if (*val < 0)
			return *val;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 0;
		FUNC3(&hx711_data->lock);

		*val2 = FUNC0(hx711_data->gain_set);

		FUNC4(&hx711_data->lock);

		return IIO_VAL_INT_PLUS_NANO;
	default:
		return -EINVAL;
	}
}