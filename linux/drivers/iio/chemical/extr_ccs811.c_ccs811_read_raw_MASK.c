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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel2; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  voc; int /*<<< orphan*/  co2; int /*<<< orphan*/  raw_data; } ;
struct ccs811_data {int /*<<< orphan*/  lock; TYPE_1__ buffer; } ;

/* Variables and functions */
 int CCS811_VOLTAGE_MASK ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 134 
#define  IIO_CHAN_INFO_SCALE 133 
#define  IIO_CONCENTRATION 132 
#define  IIO_CURRENT 131 
#define  IIO_MOD_CO2 130 
#define  IIO_MOD_VOC 129 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int IIO_VAL_INT_PLUS_NANO ; 
#define  IIO_VOLTAGE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ccs811_data*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ccs811_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long mask)
{
	struct ccs811_data *data = FUNC4(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC2(indio_dev);
		if (ret)
			return ret;
		FUNC5(&data->lock);
		ret = FUNC1(data);
		if (ret < 0) {
			FUNC6(&data->lock);
			FUNC3(indio_dev);
			return ret;
		}

		switch (chan->type) {
		case IIO_VOLTAGE:
			*val = FUNC0(data->buffer.raw_data) &
					   CCS811_VOLTAGE_MASK;
			ret = IIO_VAL_INT;
			break;
		case IIO_CURRENT:
			*val = FUNC0(data->buffer.raw_data) >> 10;
			ret = IIO_VAL_INT;
			break;
		case IIO_CONCENTRATION:
			switch (chan->channel2) {
			case IIO_MOD_CO2:
				*val = FUNC0(data->buffer.co2);
				ret =  IIO_VAL_INT;
				break;
			case IIO_MOD_VOC:
				*val = FUNC0(data->buffer.voc);
				ret = IIO_VAL_INT;
				break;
			default:
				ret = -EINVAL;
			}
			break;
		default:
			ret = -EINVAL;
		}
		FUNC6(&data->lock);
		FUNC3(indio_dev);

		return ret;

	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_VOLTAGE:
			*val = 1;
			*val2 = 612903;
			return IIO_VAL_INT_PLUS_MICRO;
		case IIO_CURRENT:
			*val = 0;
			*val2 = 1000;
			return IIO_VAL_INT_PLUS_MICRO;
		case IIO_CONCENTRATION:
			switch (chan->channel2) {
			case IIO_MOD_CO2:
				*val = 0;
				*val2 = 100;
				return IIO_VAL_INT_PLUS_MICRO;
			case IIO_MOD_VOC:
				*val = 0;
				*val2 = 100;
				return IIO_VAL_INT_PLUS_NANO;
			default:
				return -EINVAL;
			}
		default:
			return -EINVAL;
		}
	default:
		return -EINVAL;
	}
}