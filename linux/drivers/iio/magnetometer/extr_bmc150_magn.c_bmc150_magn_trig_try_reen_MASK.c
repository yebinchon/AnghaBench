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
struct bmc150_magn_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dready_trigger_on; } ;

/* Variables and functions */
 int FUNC0 (struct bmc150_magn_data*) ; 
 struct bmc150_magn_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_trigger *trig)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct bmc150_magn_data *data = FUNC1(indio_dev);
	int ret;

	if (!data->dready_trigger_on)
		return 0;

	FUNC3(&data->mutex);
	ret = FUNC0(data);
	FUNC4(&data->mutex);

	return ret;
}