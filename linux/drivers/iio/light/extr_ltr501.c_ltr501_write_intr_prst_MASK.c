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
struct ltr501_data {unsigned long als_period; unsigned long ps_period; int /*<<< orphan*/  lock_ps; int /*<<< orphan*/  reg_ps_prst; int /*<<< orphan*/  lock_als; int /*<<< orphan*/  reg_als_prst; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;

/* Variables and functions */
 int FUNC0 (unsigned long,int) ; 
 int EINVAL ; 
#define  IIO_INTENSITY 129 
#define  IIO_PROXIMITY 128 
 int FUNC1 (struct ltr501_data*,int*) ; 
 int FUNC2 (struct ltr501_data*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct ltr501_data *data,
				  enum iio_chan_type type,
				  int val, int val2)
{
	int ret, samp_period, new_val;
	unsigned long period;

	if (val < 0 || val2 < 0)
		return -EINVAL;

	/* period in microseconds */
	period = ((val * 1000000) + val2);

	switch (type) {
	case IIO_INTENSITY:
		ret = FUNC1(data, &samp_period);
		if (ret < 0)
			return ret;

		/* period should be atleast equal to sampling period */
		if (period < samp_period)
			return -EINVAL;

		new_val = FUNC0(period, samp_period);
		if (new_val < 0 || new_val > 0x0f)
			return -EINVAL;

		FUNC3(&data->lock_als);
		ret = FUNC5(data->reg_als_prst, new_val);
		FUNC4(&data->lock_als);
		if (ret >= 0)
			data->als_period = period;

		return ret;
	case IIO_PROXIMITY:
		ret = FUNC2(data, &samp_period);
		if (ret < 0)
			return ret;

		/* period should be atleast equal to rate */
		if (period < samp_period)
			return -EINVAL;

		new_val = FUNC0(period, samp_period);
		if (new_val < 0 || new_val > 0x0f)
			return -EINVAL;

		FUNC3(&data->lock_ps);
		ret = FUNC5(data->reg_ps_prst, new_val);
		FUNC4(&data->lock_ps);
		if (ret >= 0)
			data->ps_period = period;

		return ret;
	default:
		return -EINVAL;
	}

	return -EINVAL;
}