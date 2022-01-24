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
struct bmp280_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 131 
#define  IIO_HUMIDITYRELATIVE 130 
#define  IIO_PRESSURE 129 
#define  IIO_TEMP 128 
 int FUNC0 (struct bmp280_data*,int) ; 
 int FUNC1 (struct bmp280_data*,int) ; 
 int FUNC2 (struct bmp280_data*,int) ; 
 struct bmp280_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long mask)
{
	int ret = 0;
	struct bmp280_data *data = FUNC3(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
		FUNC6(data->dev);
		FUNC4(&data->lock);
		switch (chan->type) {
		case IIO_HUMIDITYRELATIVE:
			ret = FUNC0(data, val);
			break;
		case IIO_PRESSURE:
			ret = FUNC1(data, val);
			break;
		case IIO_TEMP:
			ret = FUNC2(data, val);
			break;
		default:
			ret = -EINVAL;
			break;
		}
		FUNC5(&data->lock);
		FUNC7(data->dev);
		FUNC8(data->dev);
		break;
	default:
		return -EINVAL;
	}

	return ret;
}