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
struct hx711_data {int gain_set; int gain_chan_a; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SCALE 128 
 int FUNC0 (int) ; 
 int FUNC1 (struct hx711_data*) ; 
 struct hx711_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int val,
				int val2,
				long mask)
{
	struct hx711_data *hx711_data = FUNC2(indio_dev);
	int ret;
	int gain;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		/*
		 * a scale greater than 1 mV per LSB is not possible
		 * with the HX711, therefore val must be 0
		 */
		if (val != 0)
			return -EINVAL;

		FUNC3(&hx711_data->lock);

		gain = FUNC0(val2);
		if (gain < 0) {
			FUNC4(&hx711_data->lock);
			return gain;
		}

		if (gain != hx711_data->gain_set) {
			hx711_data->gain_set = gain;
			if (gain != 32)
				hx711_data->gain_chan_a = gain;

			ret = FUNC1(hx711_data);
			if (ret < 0) {
				FUNC4(&hx711_data->lock);
				return ret;
			}
		}

		FUNC4(&hx711_data->lock);
		return 0;
	default:
		return -EINVAL;
	}

	return 0;
}