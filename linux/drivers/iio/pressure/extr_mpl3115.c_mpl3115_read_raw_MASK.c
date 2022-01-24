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
typedef  int /*<<< orphan*/  u8 ;
struct mpl3115_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_PRESSURE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int /*<<< orphan*/  MPL3115_OUT_PRESS ; 
 int /*<<< orphan*/  MPL3115_OUT_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct mpl3115_data* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct mpl3115_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct mpl3115_data *data = FUNC4(indio_dev);
	__be32 tmp = 0;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC2(indio_dev);
		if (ret)
			return ret;

		switch (chan->type) {
		case IIO_PRESSURE: /* in 0.25 pascal / LSB */
			FUNC6(&data->lock);
			ret = FUNC5(data);
			if (ret < 0) {
				FUNC7(&data->lock);
				break;
			}
			ret = FUNC1(data->client,
				MPL3115_OUT_PRESS, 3, (u8 *) &tmp);
			FUNC7(&data->lock);
			if (ret < 0)
				break;
			*val = FUNC0(tmp) >> 12;
			ret = IIO_VAL_INT;
			break;
		case IIO_TEMP: /* in 0.0625 celsius / LSB */
			FUNC6(&data->lock);
			ret = FUNC5(data);
			if (ret < 0) {
				FUNC7(&data->lock);
				break;
			}
			ret = FUNC1(data->client,
				MPL3115_OUT_TEMP, 2, (u8 *) &tmp);
			FUNC7(&data->lock);
			if (ret < 0)
				break;
			*val = FUNC8(FUNC0(tmp) >> 20, 11);
			ret = IIO_VAL_INT;
			break;
		default:
			ret = -EINVAL;
			break;
		}

		FUNC3(indio_dev);
		return ret;

	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_PRESSURE:
			*val = 0;
			*val2 = 250; /* want kilopascal */
			return IIO_VAL_INT_PLUS_MICRO;
		case IIO_TEMP:
			*val = 0;
			*val2 = 62500;
			return IIO_VAL_INT_PLUS_MICRO;
		default:
			return -EINVAL;
		}
	}
	return -EINVAL;
}