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
typedef  int /*<<< orphan*/  u8 ;
struct kmx61_data {int motion_trig_on; int acc_dready_trig_on; int mag_dready_trig_on; int /*<<< orphan*/  lock; struct iio_trigger* mag_dready_trig; struct iio_trigger* acc_dready_trig; struct iio_trigger* motion_trig; scalar_t__ ev_enable_state; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KMX61_ACC ; 
 int /*<<< orphan*/  KMX61_MAG ; 
 struct iio_dev* FUNC0 (struct iio_trigger*) ; 
 struct kmx61_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct kmx61_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kmx61_data*,int) ; 
 int FUNC4 (struct kmx61_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_trigger *trig,
					    bool state)
{
	int ret = 0;
	u8 device;

	struct iio_dev *indio_dev = FUNC0(trig);
	struct kmx61_data *data = FUNC1(indio_dev);

	FUNC5(&data->lock);

	if (!state && data->ev_enable_state && data->motion_trig_on) {
		data->motion_trig_on = false;
		goto err_unlock;
	}

	if (data->acc_dready_trig == trig || data->motion_trig == trig)
		device = KMX61_ACC;
	else
		device = KMX61_MAG;

	ret = FUNC2(data, state, device);
	if (ret < 0)
		goto err_unlock;

	if (data->acc_dready_trig == trig || data->mag_dready_trig == trig)
		ret = FUNC4(data, state, device);
	else
		ret = FUNC3(data, state);
	if (ret < 0) {
		FUNC2(data, false, device);
		goto err_unlock;
	}

	if (data->acc_dready_trig == trig)
		data->acc_dready_trig_on = state;
	else if (data->mag_dready_trig == trig)
		data->mag_dready_trig_on = state;
	else
		data->motion_trig_on = state;
err_unlock:
	FUNC6(&data->lock);

	return ret;
}