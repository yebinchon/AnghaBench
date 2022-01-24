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

/* Variables and functions */
 int /*<<< orphan*/  ST_SENSORS_ENABLE_ALL_AXIS ; 
 int FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	int err, err2;

	err = FUNC2(indio_dev, false);
	if (err < 0)
		goto st_accel_buffer_predisable;

	err = FUNC1(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);

st_accel_buffer_predisable:
	err2 = FUNC0(indio_dev);
	if (!err)
		err = err2;

	return err;
}