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
struct vcnl4035_data {int als_it_val; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 128 
 int /*<<< orphan*/  VCNL4035_ALS_CONF ; 
 int /*<<< orphan*/  VCNL4035_ALS_IT_MASK ; 
 struct vcnl4035_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct vcnl4035_data*,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int val, int val2, long mask)
{
	int ret;
	struct vcnl4035_data *data = FUNC0(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_INT_TIME:
		if (val <= 0 || val > 800)
			return -EINVAL;

		ret = FUNC2(data, true);
		if  (ret < 0)
			return ret;

		ret = FUNC1(data->regmap, VCNL4035_ALS_CONF,
					 VCNL4035_ALS_IT_MASK,
					 val / 100);
		if (!ret)
			data->als_it_val = val / 100;

		FUNC2(data, false);
		return ret;
	default:
		return -EINVAL;
	}
}