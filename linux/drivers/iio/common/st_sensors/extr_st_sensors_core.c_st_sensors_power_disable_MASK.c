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
struct st_sensor_data {int /*<<< orphan*/  vdd_io; int /*<<< orphan*/  vdd; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct st_sensor_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct iio_dev *indio_dev)
{
	struct st_sensor_data *pdata = FUNC0(indio_dev);

	FUNC1(pdata->vdd);
	FUNC1(pdata->vdd_io);
}