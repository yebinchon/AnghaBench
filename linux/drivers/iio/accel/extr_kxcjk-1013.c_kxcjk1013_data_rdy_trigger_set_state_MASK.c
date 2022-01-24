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
struct kxcjk1013_data {int motion_trigger_on; int dready_trigger_on; int /*<<< orphan*/  mutex; struct iio_trigger* motion_trig; scalar_t__ ev_enable_state; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct kxcjk1013_data* FUNC0 (struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct iio_trigger*) ; 
 int FUNC2 (struct kxcjk1013_data*,int) ; 
 int FUNC3 (struct kxcjk1013_data*,int) ; 
 int FUNC4 (struct kxcjk1013_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_trigger *trig,
						bool state)
{
	struct iio_dev *indio_dev = FUNC1(trig);
	struct kxcjk1013_data *data = FUNC0(indio_dev);
	int ret;

	FUNC5(&data->mutex);

	if (!state && data->ev_enable_state && data->motion_trigger_on) {
		data->motion_trigger_on = false;
		FUNC6(&data->mutex);
		return 0;
	}

	ret = FUNC2(data, state);
	if (ret < 0) {
		FUNC6(&data->mutex);
		return ret;
	}
	if (data->motion_trig == trig)
		ret = FUNC3(data, state);
	else
		ret = FUNC4(data, state);
	if (ret < 0) {
		FUNC2(data, false);
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