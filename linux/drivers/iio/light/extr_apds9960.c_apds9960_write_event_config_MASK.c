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
struct iio_chan_spec {int type; } ;
struct apds9960_data {int pxs_int; int als_int; int /*<<< orphan*/  reg_int_als; int /*<<< orphan*/  reg_int_pxs; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_INTENSITY 129 
#define  IIO_PROXIMITY 128 
 int /*<<< orphan*/  FUNC0 (struct apds9960_data*,int) ; 
 struct apds9960_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				       const struct iio_chan_spec *chan,
				       enum iio_event_type type,
				       enum iio_event_direction dir,
				       int state)
{
	struct apds9960_data *data = FUNC1(indio_dev);
	int ret;

	state = !!state;

	switch (chan->type) {
	case IIO_PROXIMITY:
		if (data->pxs_int == state)
			return -EINVAL;

		ret = FUNC2(data->reg_int_pxs, state);
		if (ret)
			return ret;
		data->pxs_int = state;
		FUNC0(data, state);
		break;
	case IIO_INTENSITY:
		if (data->als_int == state)
			return -EINVAL;

		ret = FUNC2(data->reg_int_als, state);
		if (ret)
			return ret;
		data->als_int = state;
		FUNC0(data, state);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}