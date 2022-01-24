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
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 unsigned int VCNL4035_ALS_DATA ; 
 unsigned int VCNL4035_WHITE_DATA ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct vcnl4035_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,int*) ; 
 int FUNC4 (struct vcnl4035_data*,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan, int *val,
			    int *val2, long mask)
{
	struct vcnl4035_data *data = FUNC2(indio_dev);
	int ret;
	int raw_data;
	unsigned int reg;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC4(data, true);
		if  (ret < 0)
			return ret;

		ret = FUNC0(indio_dev);
		if (!ret) {
			if (chan->channel)
				reg = VCNL4035_ALS_DATA;
			else
				reg = VCNL4035_WHITE_DATA;
			ret = FUNC3(data->regmap, reg, &raw_data);
			FUNC1(indio_dev);
			if (!ret) {
				*val = raw_data;
				ret = IIO_VAL_INT;
			}
		}
		FUNC4(data, false);
		return ret;
	case IIO_CHAN_INFO_INT_TIME:
		*val = 50;
		if (data->als_it_val)
			*val = data->als_it_val * 100;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 64;
		if (!data->als_it_val)
			*val2 = 1000;
		else
			*val2 = data->als_it_val * 2 * 1000;
		return IIO_VAL_FRACTIONAL;
	default:
		return -EINVAL;
	}
}