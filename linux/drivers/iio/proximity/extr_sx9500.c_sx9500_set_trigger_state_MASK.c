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
struct sx9500_data {int trigger_enabled; int /*<<< orphan*/  mutex; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct sx9500_data* FUNC0 (struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sx9500_data*) ; 
 int FUNC5 (struct sx9500_data*) ; 

__attribute__((used)) static int FUNC6(struct iio_trigger *trig,
				    bool state)
{
	struct iio_dev *indio_dev = FUNC1(trig);
	struct sx9500_data *data = FUNC0(indio_dev);
	int ret;

	FUNC2(&data->mutex);

	if (state)
		ret = FUNC5(data);
	else
		ret = FUNC4(data);
	if (ret < 0)
		goto out;

	data->trigger_enabled = state;

out:
	FUNC3(&data->mutex);

	return ret;
}