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
struct us5182d_data {int px_high_th; int px_low_th; int /*<<< orphan*/  lock; int /*<<< orphan*/  falling_en; int /*<<< orphan*/  rising_en; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_EV_DIR_FALLING 129 
#define  IIO_EV_DIR_RISING 128 
 int USHRT_MAX ; 
 struct us5182d_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iio_dev*,int,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, enum iio_event_type type,
	enum iio_event_direction dir, enum iio_event_info info, int val,
	int val2)
{
	struct us5182d_data *data = FUNC0(indio_dev);
	int ret;

	if (val < 0 || val > USHRT_MAX || val2 != 0)
		return -EINVAL;

	switch (dir) {
	case IIO_EV_DIR_RISING:
		FUNC1(&data->lock);
		if (data->rising_en) {
			ret = FUNC3(indio_dev, dir, val);
			if (ret < 0)
				goto err;
		}
		data->px_high_th = val;
		FUNC2(&data->lock);
		break;
	case IIO_EV_DIR_FALLING:
		FUNC1(&data->lock);
		if (data->falling_en) {
			ret = FUNC3(indio_dev, dir, val);
			if (ret < 0)
				goto err;
		}
		data->px_low_th = val;
		FUNC2(&data->lock);
		break;
	default:
		return -EINVAL;
	}

	return 0;
err:
	FUNC2(&data->lock);
	return ret;
}