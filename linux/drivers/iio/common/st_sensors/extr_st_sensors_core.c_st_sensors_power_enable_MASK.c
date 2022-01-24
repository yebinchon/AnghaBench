#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_sensor_data {void* vdd; void* vdd_io; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct st_sensor_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (void*) ; 

int FUNC8(struct iio_dev *indio_dev)
{
	struct st_sensor_data *pdata = FUNC5(indio_dev);
	int err;

	/* Regulators not mandatory, but if requested we should enable them. */
	pdata->vdd = FUNC4(indio_dev->dev.parent, "vdd");
	if (FUNC0(pdata->vdd)) {
		FUNC2(&indio_dev->dev, "unable to get Vdd supply\n");
		return FUNC1(pdata->vdd);
	}
	err = FUNC7(pdata->vdd);
	if (err != 0) {
		FUNC3(&indio_dev->dev,
			 "Failed to enable specified Vdd supply\n");
		return err;
	}

	pdata->vdd_io = FUNC4(indio_dev->dev.parent, "vddio");
	if (FUNC0(pdata->vdd_io)) {
		FUNC2(&indio_dev->dev, "unable to get Vdd_IO supply\n");
		err = FUNC1(pdata->vdd_io);
		goto st_sensors_disable_vdd;
	}
	err = FUNC7(pdata->vdd_io);
	if (err != 0) {
		FUNC3(&indio_dev->dev,
			 "Failed to enable specified Vdd_IO supply\n");
		goto st_sensors_disable_vdd;
	}

	return 0;

st_sensors_disable_vdd:
	FUNC6(pdata->vdd);
	return err;
}