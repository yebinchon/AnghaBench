#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; int /*<<< orphan*/  scan_index; } ;
struct bmg160_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dps_range; } ;
struct TYPE_3__ {int scale; int /*<<< orphan*/  dps_range; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int BMG160_TEMP_CENTER_VAL ; 
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_ANGL_VEL 134 
#define  IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY 133 
#define  IIO_CHAN_INFO_OFFSET 132 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SAMP_FREQ 130 
#define  IIO_CHAN_INFO_SCALE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC1 (struct bmg160_data*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct bmg160_data*,int*) ; 
 int FUNC3 (struct bmg160_data*,int*) ; 
 int FUNC4 (struct bmg160_data*,int*) ; 
 TYPE_1__* bmg160_scale_table ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct bmg160_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long mask)
{
	struct bmg160_data *data = FUNC6(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		switch (chan->type) {
		case IIO_TEMP:
			return FUNC4(data, val);
		case IIO_ANGL_VEL:
			if (FUNC5(indio_dev))
				return -EBUSY;
			else
				return FUNC1(data, chan->scan_index,
						       val);
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_OFFSET:
		if (chan->type == IIO_TEMP) {
			*val = BMG160_TEMP_CENTER_VAL;
			return IIO_VAL_INT;
		} else
			return -EINVAL;
	case IIO_CHAN_INFO_LOW_PASS_FILTER_3DB_FREQUENCY:
		return FUNC3(data, val);
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_TEMP:
			*val = 500;
			return IIO_VAL_INT;
		case IIO_ANGL_VEL:
		{
			int i;

			for (i = 0; i < FUNC0(bmg160_scale_table); ++i) {
				if (bmg160_scale_table[i].dps_range ==
							data->dps_range) {
					*val = 0;
					*val2 = bmg160_scale_table[i].scale;
					return IIO_VAL_INT_PLUS_MICRO;
				}
			}
			return -EINVAL;
		}
		default:
			return -EINVAL;
		}
	case IIO_CHAN_INFO_SAMP_FREQ:
		*val2 = 0;
		FUNC7(&data->mutex);
		ret = FUNC2(data, val);
		FUNC8(&data->mutex);
		return ret;
	default:
		return -EINVAL;
	}
}