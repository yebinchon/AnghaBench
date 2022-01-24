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
struct iio_chan_spec {int type; int channel; } ;
struct apds9300_data {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_INTENSITY 129 
#define  IIO_LIGHT 128 
 int IIO_VAL_INT ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct apds9300_data*,int) ; 
 struct apds9300_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
		struct iio_chan_spec const *chan, int *val, int *val2,
		long mask)
{
	int ch0, ch1, ret = -EINVAL;
	struct apds9300_data *data = FUNC2(indio_dev);

	FUNC3(&data->mutex);
	switch (chan->type) {
	case IIO_LIGHT:
		ch0 = FUNC1(data, 0);
		if (ch0 < 0) {
			ret = ch0;
			break;
		}
		ch1 = FUNC1(data, 1);
		if (ch1 < 0) {
			ret = ch1;
			break;
		}
		*val = FUNC0(ch0, ch1);
		ret = IIO_VAL_INT;
		break;
	case IIO_INTENSITY:
		ret = FUNC1(data, chan->channel);
		if (ret < 0)
			break;
		*val = ret;
		ret = IIO_VAL_INT;
		break;
	default:
		break;
	}
	FUNC4(&data->mutex);

	return ret;
}