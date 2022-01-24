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
struct apds9300_data {int /*<<< orphan*/  mutex; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int IIO_EV_DIR_RISING ; 
 int FUNC0 (struct apds9300_data*,int) ; 
 int FUNC1 (struct apds9300_data*,int) ; 
 struct apds9300_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
		const struct iio_chan_spec *chan, enum iio_event_type type,
		enum iio_event_direction dir, enum iio_event_info info, int val,
		int val2)
{
	struct apds9300_data *data = FUNC2(indio_dev);
	int ret;

	FUNC3(&data->mutex);
	if (dir == IIO_EV_DIR_RISING)
		ret = FUNC0(data, val);
	else
		ret = FUNC1(data, val);
	FUNC4(&data->mutex);

	return ret;
}