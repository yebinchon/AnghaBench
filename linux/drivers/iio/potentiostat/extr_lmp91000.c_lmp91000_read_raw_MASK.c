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
struct lmp91000_data {int /*<<< orphan*/  adc_chan; int /*<<< orphan*/  cb_buffer; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_OFFSET 131 
#define  IIO_CHAN_INFO_PROCESSED 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  LMP91000_TEMP_BASE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int*,int) ; 
 struct lmp91000_data* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC7 (struct lmp91000_data*,int /*<<< orphan*/ ,int*) ; 
 int* lmp91000_temp_lut ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int *val, int *val2, long mask)
{
	struct lmp91000_data *data = FUNC4(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
	case IIO_CHAN_INFO_PROCESSED: {
		int ret = FUNC1(data->cb_buffer);

		if (ret)
			return ret;

		ret = FUNC7(data, chan->address, val);

		FUNC2(data->cb_buffer);

		if (ret)
			return ret;

		if (mask == IIO_CHAN_INFO_PROCESSED) {
			int tmp, i;

			ret = FUNC3(data->adc_chan,
							   *val, &tmp, 1);
			if (ret)
				return ret;

			for (i = 0; i < FUNC0(lmp91000_temp_lut); i++)
				if (lmp91000_temp_lut[i] < tmp)
					break;

			*val = (LMP91000_TEMP_BASE + i) * 1000;
		}
		return IIO_VAL_INT;
	}
	case IIO_CHAN_INFO_OFFSET:
		return FUNC5(data->adc_chan, val, val2);
	case IIO_CHAN_INFO_SCALE:
		return FUNC6(data->adc_chan, val, val2);
	}

	return -EINVAL;
}