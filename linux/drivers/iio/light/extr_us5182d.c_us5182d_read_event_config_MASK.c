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
struct us5182d_data {int rising_en; int falling_en; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_EV_DIR_FALLING 129 
#define  IIO_EV_DIR_RISING 128 
 struct us5182d_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
	const struct iio_chan_spec *chan, enum iio_event_type type,
	enum iio_event_direction dir)
{
	struct us5182d_data *data = FUNC0(indio_dev);
	int ret;

	switch (dir) {
	case IIO_EV_DIR_RISING:
		FUNC1(&data->lock);
		ret = data->rising_en;
		FUNC2(&data->lock);
		break;
	case IIO_EV_DIR_FALLING:
		FUNC1(&data->lock);
		ret = data->falling_en;
		FUNC2(&data->lock);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}