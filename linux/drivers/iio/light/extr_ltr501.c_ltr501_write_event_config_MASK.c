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
struct ltr501_data {int /*<<< orphan*/  lock_ps; int /*<<< orphan*/  reg_ps_intr; int /*<<< orphan*/  lock_als; int /*<<< orphan*/  reg_als_intr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_INTENSITY 129 
#define  IIO_PROXIMITY 128 
 struct ltr501_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
				     const struct iio_chan_spec *chan,
				     enum iio_event_type type,
				     enum iio_event_direction dir, int state)
{
	struct ltr501_data *data = FUNC0(indio_dev);
	int ret;

	/* only 1 and 0 are valid inputs */
	if (state != 1  && state != 0)
		return -EINVAL;

	switch (chan->type) {
	case IIO_INTENSITY:
		FUNC1(&data->lock_als);
		ret = FUNC3(data->reg_als_intr, state);
		FUNC2(&data->lock_als);
		return ret;
	case IIO_PROXIMITY:
		FUNC1(&data->lock_ps);
		ret = FUNC3(data->reg_ps_intr, state);
		FUNC2(&data->lock_ps);
		return ret;
	default:
		return -EINVAL;
	}

	return -EINVAL;
}