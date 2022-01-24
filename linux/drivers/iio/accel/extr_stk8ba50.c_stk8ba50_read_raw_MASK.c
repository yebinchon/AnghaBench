#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stk8ba50_data {size_t range; size_t sample_rate_idx; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;
struct TYPE_4__ {int samp_freq; } ;
struct TYPE_3__ {int scale_val; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int STK8BA50_DATA_SHIFT ; 
 int /*<<< orphan*/  STK8BA50_MODE_NORMAL ; 
 int /*<<< orphan*/  STK8BA50_MODE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct stk8ba50_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (struct stk8ba50_data*,int /*<<< orphan*/ ) ; 
 TYPE_2__* stk8ba50_samp_freq_table ; 
 TYPE_1__* stk8ba50_scale_table ; 
 int FUNC6 (struct stk8ba50_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int *val, int *val2, long mask)
{
	struct stk8ba50_data *data = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (FUNC0(indio_dev))
			return -EBUSY;
		FUNC2(&data->lock);
		ret = FUNC6(data, STK8BA50_MODE_NORMAL);
		if (ret < 0) {
			FUNC3(&data->lock);
			return -EINVAL;
		}
		ret = FUNC5(data, chan->address);
		if (ret < 0) {
			FUNC6(data, STK8BA50_MODE_SUSPEND);
			FUNC3(&data->lock);
			return -EINVAL;
		}
		*val = FUNC4(ret >> STK8BA50_DATA_SHIFT, 9);
		FUNC6(data, STK8BA50_MODE_SUSPEND);
		FUNC3(&data->lock);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 0;
		*val2 = stk8ba50_scale_table[data->range].scale_val;
		return IIO_VAL_INT_PLUS_MICRO;
	case IIO_CHAN_INFO_SAMP_FREQ:
		*val = stk8ba50_samp_freq_table
				[data->sample_rate_idx].samp_freq;
		*val2 = 0;
		return IIO_VAL_INT;
	}

	return -EINVAL;
}