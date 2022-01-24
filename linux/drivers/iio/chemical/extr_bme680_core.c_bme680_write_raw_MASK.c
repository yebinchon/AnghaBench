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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
struct bme680_data {int oversampling_temp; int oversampling_press; int oversampling_humid; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 131 
#define  IIO_HUMIDITYRELATIVE 130 
#define  IIO_PRESSURE 129 
#define  IIO_TEMP 128 
 int FUNC0 (struct bme680_data*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct bme680_data* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long mask)
{
	struct bme680_data *data = FUNC2(indio_dev);

	if (val2 != 0)
		return -EINVAL;

	switch (mask) {
	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
	{
		if (!FUNC1(val))
			return -EINVAL;

		switch (chan->type) {
		case IIO_TEMP:
			data->oversampling_temp = val;
			break;
		case IIO_PRESSURE:
			data->oversampling_press = val;
			break;
		case IIO_HUMIDITYRELATIVE:
			data->oversampling_humid = val;
			break;
		default:
			return -EINVAL;
		}

		return FUNC0(data);
	}
	default:
		return -EINVAL;
	}
}