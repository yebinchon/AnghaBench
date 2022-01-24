#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kxcjk1013_data {size_t range; int /*<<< orphan*/  mutex; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  scan_index; } ;
struct TYPE_2__ {int scale; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 TYPE_1__* KXCJK1013_scale_table ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct kxcjk1013_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct kxcjk1013_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kxcjk1013_data*,int*,int*) ; 
 int FUNC4 (struct kxcjk1013_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan, int *val,
			      int *val2, long mask)
{
	struct kxcjk1013_data *data = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC5(&data->mutex);
		if (FUNC0(indio_dev))
			ret = -EBUSY;
		else {
			ret = FUNC4(data, true);
			if (ret < 0) {
				FUNC6(&data->mutex);
				return ret;
			}
			ret = FUNC2(data, chan->scan_index);
			if (ret < 0) {
				FUNC4(data, false);
				FUNC6(&data->mutex);
				return ret;
			}
			*val = FUNC7(ret >> 4, 11);
			ret = FUNC4(data, false);
		}
		FUNC6(&data->mutex);

		if (ret < 0)
			return ret;

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		*val = 0;
		*val2 = KXCJK1013_scale_table[data->range].scale;
		return IIO_VAL_INT_PLUS_MICRO;

	case IIO_CHAN_INFO_SAMP_FREQ:
		FUNC5(&data->mutex);
		ret = FUNC3(data, val, val2);
		FUNC6(&data->mutex);
		return ret;

	default:
		return -EINVAL;
	}
}