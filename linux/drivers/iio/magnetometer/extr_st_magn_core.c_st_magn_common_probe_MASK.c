#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_sensor_fullscale_avl {int dummy; } ;
struct st_sensor_data {scalar_t__ irq; TYPE_4__* sensor_settings; int /*<<< orphan*/  odr; struct st_sensor_fullscale_avl* current_fullscale; int /*<<< orphan*/  num_data_channels; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; } ;
struct TYPE_7__ {TYPE_2__* odr_avl; } ;
struct TYPE_5__ {int /*<<< orphan*/ * fs_avl; } ;
struct TYPE_8__ {TYPE_3__ odr; TYPE_1__ fs; int /*<<< orphan*/  ch; } ;
struct TYPE_6__ {int /*<<< orphan*/  hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  ST_MAGN_NUMBER_DATA_CHANNELS ; 
 int /*<<< orphan*/  ST_MAGN_TRIGGER_OPS ; 
 int /*<<< orphan*/  ST_SENSORS_NUMBER_ALL_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iio_dev*) ; 
 struct st_sensor_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  magn_info ; 
 int FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*) ; 

int FUNC11(struct iio_dev *indio_dev)
{
	struct st_sensor_data *mdata = FUNC2(indio_dev);
	int err;

	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &magn_info;

	err = FUNC9(indio_dev);
	if (err)
		return err;

	err = FUNC10(indio_dev);
	if (err < 0)
		goto st_magn_power_off;

	mdata->num_data_channels = ST_MAGN_NUMBER_DATA_CHANNELS;
	indio_dev->channels = mdata->sensor_settings->ch;
	indio_dev->num_channels = ST_SENSORS_NUMBER_ALL_CHANNELS;

	mdata->current_fullscale = (struct st_sensor_fullscale_avl *)
					&mdata->sensor_settings->fs.fs_avl[0];
	mdata->odr = mdata->sensor_settings->odr.odr_avl[0].hz;

	err = FUNC7(indio_dev, NULL);
	if (err < 0)
		goto st_magn_power_off;

	err = FUNC3(indio_dev);
	if (err < 0)
		goto st_magn_power_off;

	if (mdata->irq > 0) {
		err = FUNC5(indio_dev,
						ST_MAGN_TRIGGER_OPS);
		if (err < 0)
			goto st_magn_probe_trigger_error;
	}

	err = FUNC1(indio_dev);
	if (err)
		goto st_magn_device_register_error;

	FUNC0(&indio_dev->dev, "registered magnetometer %s\n",
		 indio_dev->name);

	return 0;

st_magn_device_register_error:
	if (mdata->irq > 0)
		FUNC6(indio_dev);
st_magn_probe_trigger_error:
	FUNC4(indio_dev);
st_magn_power_off:
	FUNC8(indio_dev);

	return err;
}