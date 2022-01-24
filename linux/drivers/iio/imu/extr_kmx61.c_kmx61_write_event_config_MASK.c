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
struct kmx61_data {int ev_enable_state; int /*<<< orphan*/  lock; scalar_t__ motion_trig_on; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int /*<<< orphan*/  KMX61_ACC ; 
 struct kmx61_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct kmx61_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kmx61_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				    const struct iio_chan_spec *chan,
				    enum iio_event_type type,
				    enum iio_event_direction dir,
				    int state)
{
	struct kmx61_data *data = FUNC0(indio_dev);
	int ret = 0;

	if (state && data->ev_enable_state)
		return 0;

	FUNC3(&data->lock);

	if (!state && data->motion_trig_on) {
		data->ev_enable_state = false;
		goto err_unlock;
	}

	ret = FUNC1(data, state, KMX61_ACC);
	if (ret < 0)
		goto err_unlock;

	ret = FUNC2(data, state);
	if (ret < 0) {
		FUNC1(data, false, KMX61_ACC);
		goto err_unlock;
	}

	data->ev_enable_state = state;

err_unlock:
	FUNC4(&data->lock);

	return ret;
}