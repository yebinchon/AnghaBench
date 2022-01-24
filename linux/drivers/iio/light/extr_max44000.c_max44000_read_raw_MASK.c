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
struct max44000_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_INT_TIME 133 
#define  IIO_CHAN_INFO_RAW 132 
#define  IIO_CHAN_INFO_SCALE 131 
#define  IIO_CURRENT 130 
#define  IIO_LIGHT 129 
#define  IIO_PROXIMITY 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_NANO ; 
 int MAX44000_ALSPGA_MAX_SHIFT ; 
 int MAX44000_ALS_TO_LUX_DEFAULT_FRACTION_LOG2 ; 
 int /*<<< orphan*/  MAX44000_REG_PRX_DATA ; 
 struct max44000_data* FUNC0 (struct iio_dev*) ; 
 int* max44000_alspga_shift ; 
 int* max44000_int_time_avail_ns_array ; 
 int FUNC1 (struct max44000_data*) ; 
 int FUNC2 (struct max44000_data*) ; 
 int FUNC3 (struct max44000_data*) ; 
 int FUNC4 (struct max44000_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int *val, int *val2, long mask)
{
	struct max44000_data *data = FUNC0(indio_dev);
	int alstim, alspga;
	unsigned int regval;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		switch (chan->type) {
		case IIO_LIGHT:
			FUNC5(&data->lock);
			ret = FUNC3(data);
			FUNC6(&data->lock);
			if (ret < 0)
				return ret;
			*val = ret;
			return IIO_VAL_INT;

		case IIO_PROXIMITY:
			FUNC5(&data->lock);
			ret = FUNC7(data->regmap, MAX44000_REG_PRX_DATA, &regval);
			FUNC6(&data->lock);
			if (ret < 0)
				return ret;
			*val = regval;
			return IIO_VAL_INT;

		case IIO_CURRENT:
			FUNC5(&data->lock);
			ret = FUNC4(data);
			FUNC6(&data->lock);
			if (ret < 0)
				return ret;
			*val = ret;
			return IIO_VAL_INT;

		default:
			return -EINVAL;
		}

	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_CURRENT:
			/* Output register is in 10s of miliamps */
			*val = 10;
			return IIO_VAL_INT;

		case IIO_LIGHT:
			FUNC5(&data->lock);
			alspga = ret = FUNC1(data);
			FUNC6(&data->lock);
			if (ret < 0)
				return ret;

			/* Avoid negative shifts */
			*val = (1 << MAX44000_ALSPGA_MAX_SHIFT);
			*val2 = MAX44000_ALS_TO_LUX_DEFAULT_FRACTION_LOG2
					+ MAX44000_ALSPGA_MAX_SHIFT
					- max44000_alspga_shift[alspga];
			return IIO_VAL_FRACTIONAL_LOG2;

		default:
			return -EINVAL;
		}

	case IIO_CHAN_INFO_INT_TIME:
		FUNC5(&data->lock);
		alstim = ret = FUNC2(data);
		FUNC6(&data->lock);

		if (ret < 0)
			return ret;
		*val = 0;
		*val2 = max44000_int_time_avail_ns_array[alstim];
		return IIO_VAL_INT_PLUS_NANO;

	default:
		return -EINVAL;
	}
}