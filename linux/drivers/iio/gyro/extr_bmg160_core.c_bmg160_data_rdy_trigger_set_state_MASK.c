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
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct bmg160_data {int motion_trigger_on; int dready_trigger_on; int /*<<< orphan*/  mutex; struct iio_trigger* motion_trig; scalar_t__ ev_enable_state; } ;

/* Variables and functions */
 int FUNC0 (struct bmg160_data*,int) ; 
 int FUNC1 (struct bmg160_data*,int) ; 
 int FUNC2 (struct bmg160_data*,int) ; 
 struct bmg160_data* FUNC3 (struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_trigger *trig,
					     bool state)
{
	struct iio_dev *indio_dev = FUNC4(trig);
	struct bmg160_data *data = FUNC3(indio_dev);
	int ret;

	FUNC5(&data->mutex);

	if (!state && data->ev_enable_state && data->motion_trigger_on) {
		data->motion_trigger_on = false;
		FUNC6(&data->mutex);
		return 0;
	}

	/*
	 * Refer to comment in bmg160_write_event_config for
	 * enable/disable operation order
	 */
	ret = FUNC0(data, state);
	if (ret < 0) {
		FUNC6(&data->mutex);
		return ret;
	}
	if (data->motion_trig == trig)
		ret =  FUNC1(data, state);
	else
		ret = FUNC2(data, state);
	if (ret < 0) {
		FUNC0(data, false);
		FUNC6(&data->mutex);
		return ret;
	}
	if (data->motion_trig == trig)
		data->motion_trigger_on = state;
	else
		data->dready_trigger_on = state;

	FUNC6(&data->mutex);

	return 0;
}