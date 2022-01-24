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
struct bmg160_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int FUNC0 (struct bmg160_data*,int) ; 
 int FUNC1 (struct bmg160_data*,int) ; 
 int FUNC2 (struct bmg160_data*,int) ; 
 int FUNC3 (struct bmg160_data*,int) ; 
 struct bmg160_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long mask)
{
	struct bmg160_data *data = FUNC4(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		FUNC5(&data->mutex);
		/*
		 * Section 4.2 of spec
		 * In suspend mode, the only supported operations are reading
		 * registers as well as writing to the (0x14) softreset
		 * register. Since we will be in suspend mode by default, change
		 * mode to power on for other writes.
		 */
		ret = FUNC2(data, true);
		if (ret < 0) {
			FUNC6(&data->mutex);
			return ret;
		}
		ret = FUNC0(data, val);
		if (ret < 0) {
			FUNC2(data, false);
			FUNC6(&data->mutex);
			return ret;
		}
		ret = FUNC2(data, false);
		FUNC6(&data->mutex);
		return ret;
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		if (val2)
			return -EINVAL;

		FUNC5(&data->mutex);
		ret = FUNC2(data, true);
		if (ret < 0) {
			FUNC2(data, false);
			FUNC6(&data->mutex);
			return ret;
		}
		ret = FUNC1(data, val);
		if (ret < 0) {
			FUNC2(data, false);
			FUNC6(&data->mutex);
			return ret;
		}
		ret = FUNC2(data, false);
		FUNC6(&data->mutex);
		return ret;
	case IIO_CHAN_INFO_SCALE:
		if (val)
			return -EINVAL;

		FUNC5(&data->mutex);
		/* Refer to comments above for the suspend mode ops */
		ret = FUNC2(data, true);
		if (ret < 0) {
			FUNC6(&data->mutex);
			return ret;
		}
		ret = FUNC3(data, val2);
		if (ret < 0) {
			FUNC2(data, false);
			FUNC6(&data->mutex);
			return ret;
		}
		ret = FUNC2(data, false);
		FUNC6(&data->mutex);
		return ret;
	default:
		return -EINVAL;
	}

	return -EINVAL;
}