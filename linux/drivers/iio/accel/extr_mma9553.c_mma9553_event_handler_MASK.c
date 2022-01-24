#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct mma9553_event {TYPE_1__* info; scalar_t__ enabled; } ;
struct mma9553_data {scalar_t__ activity; scalar_t__ stepcnt; int /*<<< orphan*/  mutex; int /*<<< orphan*/  timestamp; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_ACTIVITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_NONE ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_CHANGE ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_NO_MOD ; 
 int /*<<< orphan*/  IIO_STEPS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct mma9553_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct mma9553_event* FUNC4 (struct mma9553_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mma9553_data*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct mma9553_data *data = FUNC1(indio_dev);
	u16 stepcnt;
	u8 activity;
	struct mma9553_event *ev_activity, *ev_prev_activity, *ev_step_detect;
	int ret;

	FUNC6(&data->mutex);
	ret = FUNC5(data, &activity, &stepcnt);
	if (ret < 0) {
		FUNC7(&data->mutex);
		return IRQ_HANDLED;
	}

	ev_prev_activity = FUNC4(data, IIO_ACTIVITY,
					     FUNC3(
					     data->activity),
					     IIO_EV_DIR_FALLING);
	ev_activity = FUNC4(data, IIO_ACTIVITY,
					FUNC3(activity),
					IIO_EV_DIR_RISING);
	ev_step_detect = FUNC4(data, IIO_STEPS, IIO_NO_MOD,
					   IIO_EV_DIR_NONE);

	if (ev_step_detect->enabled && (stepcnt != data->stepcnt)) {
		data->stepcnt = stepcnt;
		FUNC2(indio_dev,
			       FUNC0(IIO_STEPS, 0, IIO_NO_MOD,
					      IIO_EV_DIR_NONE,
					      IIO_EV_TYPE_CHANGE, 0, 0, 0),
			       data->timestamp);
	}

	if (activity != data->activity) {
		data->activity = activity;
		/* ev_activity can be NULL if activity == ACTIVITY_UNKNOWN */
		if (ev_prev_activity && ev_prev_activity->enabled)
			FUNC2(indio_dev,
				       FUNC0(IIO_ACTIVITY, 0,
						    ev_prev_activity->info->mod,
						    IIO_EV_DIR_FALLING,
						    IIO_EV_TYPE_THRESH, 0, 0,
						    0),
				       data->timestamp);

		if (ev_activity && ev_activity->enabled)
			FUNC2(indio_dev,
				       FUNC0(IIO_ACTIVITY, 0,
						      ev_activity->info->mod,
						      IIO_EV_DIR_RISING,
						      IIO_EV_TYPE_THRESH, 0, 0,
						      0),
				       data->timestamp);
	}
	FUNC7(&data->mutex);

	return IRQ_HANDLED;
}