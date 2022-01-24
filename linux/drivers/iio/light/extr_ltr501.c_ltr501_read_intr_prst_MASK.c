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
struct ltr501_data {int /*<<< orphan*/  reg_ps_prst; int /*<<< orphan*/  reg_als_prst; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_INTENSITY 129 
#define  IIO_PROXIMITY 128 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (struct ltr501_data*,int*) ; 
 int FUNC1 (struct ltr501_data*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct ltr501_data *data,
				 enum iio_chan_type type,
				 int *val2)
{
	int ret, samp_period, prst;

	switch (type) {
	case IIO_INTENSITY:
		ret = FUNC2(data->reg_als_prst, &prst);
		if (ret < 0)
			return ret;

		ret = FUNC0(data, &samp_period);

		if (ret < 0)
			return ret;
		*val2 = samp_period * prst;
		return IIO_VAL_INT_PLUS_MICRO;
	case IIO_PROXIMITY:
		ret = FUNC2(data->reg_ps_prst, &prst);
		if (ret < 0)
			return ret;

		ret = FUNC1(data, &samp_period);

		if (ret < 0)
			return ret;

		*val2 = samp_period * prst;
		return IIO_VAL_INT_PLUS_MICRO;
	default:
		return -EINVAL;
	}

	return -EINVAL;
}