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
struct jsa1212_data {size_t als_rng_idx; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_LIGHT 129 
#define  IIO_PROXIMITY 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 struct jsa1212_data* FUNC1 (struct iio_dev*) ; 
 int* jsa1212_als_range_val ; 
 int FUNC2 (struct jsa1212_data*,int*) ; 
 int FUNC3 (struct jsa1212_data*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int *val, int *val2, long mask)
{
	int ret;
	struct jsa1212_data *data = FUNC1(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC4(&data->lock);
		switch (chan->type) {
		case IIO_LIGHT:
			ret = FUNC2(data, val);
			break;
		case IIO_PROXIMITY:
			ret = FUNC3(data, val);
			break;
		default:
			ret = -EINVAL;
			break;
		}
		FUNC5(&data->lock);
		return ret < 0 ? ret : IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_LIGHT:
			*val = jsa1212_als_range_val[data->als_rng_idx];
			*val2 = FUNC0(12); /* Max 12 bit value */
			return IIO_VAL_FRACTIONAL;
		default:
			break;
		}
		break;
	default:
		break;
	}

	return -EINVAL;
}