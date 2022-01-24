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
struct iio_chan_spec {int dummy; } ;
struct bmc150_accel_data {int ev_enable_state; int /*<<< orphan*/  mutex; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_ACCEL_INT_ANY_MOTION ; 
 int FUNC0 (struct bmc150_accel_data*,int /*<<< orphan*/ ,int) ; 
 struct bmc150_accel_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
					   const struct iio_chan_spec *chan,
					   enum iio_event_type type,
					   enum iio_event_direction dir,
					   int state)
{
	struct bmc150_accel_data *data = FUNC1(indio_dev);
	int ret;

	if (state == data->ev_enable_state)
		return 0;

	FUNC2(&data->mutex);

	ret = FUNC0(data, BMC150_ACCEL_INT_ANY_MOTION,
					 state);
	if (ret < 0) {
		FUNC3(&data->mutex);
		return ret;
	}

	data->ev_enable_state = state;
	FUNC3(&data->mutex);

	return 0;
}