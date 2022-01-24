#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct st_sensor_data {TYPE_2__* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mask; scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ enable_axis; } ;

/* Variables and functions */
 struct st_sensor_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct iio_dev *indio_dev, u8 axis_enable)
{
	struct st_sensor_data *sdata = FUNC0(indio_dev);
	int err = 0;

	if (sdata->sensor_settings->enable_axis.addr)
		err = FUNC1(indio_dev,
				sdata->sensor_settings->enable_axis.addr,
				sdata->sensor_settings->enable_axis.mask,
				axis_enable);
	return err;
}