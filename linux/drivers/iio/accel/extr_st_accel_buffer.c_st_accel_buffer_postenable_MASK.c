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
struct iio_dev {scalar_t__* active_scan_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_SENSORS_ENABLE_ALL_AXIS ; 
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iio_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	int err;

	err = FUNC0(indio_dev);
	if (err < 0)
		return err;

	err = FUNC2(indio_dev,
					 (u8)indio_dev->active_scan_mask[0]);
	if (err < 0)
		goto st_accel_buffer_predisable;

	err = FUNC3(indio_dev, true);
	if (err < 0)
		goto st_accel_buffer_enable_all_axis;

	return 0;

st_accel_buffer_enable_all_axis:
	FUNC2(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);
st_accel_buffer_predisable:
	FUNC1(indio_dev);
	return err;
}