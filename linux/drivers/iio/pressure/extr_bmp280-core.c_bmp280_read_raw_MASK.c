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
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
struct bmp280_data {int oversampling_humid; int oversampling_press; int oversampling_temp; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int (* read_humid ) (struct bmp280_data*,int*,int*) ;int (* read_press ) (struct bmp280_data*,int*,int*) ;int (* read_temp ) (struct bmp280_data*,int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 132 
#define  IIO_CHAN_INFO_PROCESSED 131 
#define  IIO_HUMIDITYRELATIVE 130 
#define  IIO_PRESSURE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_INT ; 
 struct bmp280_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bmp280_data*,int*,int*) ; 
 int FUNC7 (struct bmp280_data*,int*,int*) ; 
 int FUNC8 (struct bmp280_data*,int*) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long mask)
{
	int ret;
	struct bmp280_data *data = FUNC0(indio_dev);

	FUNC3(data->dev);
	FUNC1(&data->lock);

	switch (mask) {
	case IIO_CHAN_INFO_PROCESSED:
		switch (chan->type) {
		case IIO_HUMIDITYRELATIVE:
			ret = data->chip_info->read_humid(data, val, val2);
			break;
		case IIO_PRESSURE:
			ret = data->chip_info->read_press(data, val, val2);
			break;
		case IIO_TEMP:
			ret = data->chip_info->read_temp(data, val);
			break;
		default:
			ret = -EINVAL;
			break;
		}
		break;
	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
		switch (chan->type) {
		case IIO_HUMIDITYRELATIVE:
			*val = 1 << data->oversampling_humid;
			ret = IIO_VAL_INT;
			break;
		case IIO_PRESSURE:
			*val = 1 << data->oversampling_press;
			ret = IIO_VAL_INT;
			break;
		case IIO_TEMP:
			*val = 1 << data->oversampling_temp;
			ret = IIO_VAL_INT;
			break;
		default:
			ret = -EINVAL;
			break;
		}
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC2(&data->lock);
	FUNC4(data->dev);
	FUNC5(data->dev);

	return ret;
}