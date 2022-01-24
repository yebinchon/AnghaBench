#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct st_sensors_platform_data {int dummy; } ;
struct st_sensor_fullscale_avl {int dummy; } ;
struct st_sensor_data {scalar_t__ irq; TYPE_8__* sensor_settings; int /*<<< orphan*/  odr; struct st_sensor_fullscale_avl* current_fullscale; scalar_t__ num_data_channels; TYPE_1__* dev; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; scalar_t__ num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; } ;
struct TYPE_14__ {scalar_t__ addr; } ;
struct TYPE_13__ {scalar_t__ addr; } ;
struct TYPE_15__ {TYPE_6__ int2; TYPE_5__ int1; } ;
struct TYPE_12__ {TYPE_3__* odr_avl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * fs_avl; } ;
struct TYPE_16__ {TYPE_7__ drdy_irq; TYPE_4__ odr; TYPE_2__ fs; scalar_t__ num_ch; int /*<<< orphan*/  ch; } ;
struct TYPE_11__ {int /*<<< orphan*/  hz; } ;
struct TYPE_9__ {scalar_t__ platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  ST_PRESS_TRIGGER_OPS ; 
 int /*<<< orphan*/  default_press_pdata ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iio_dev*) ; 
 struct st_sensor_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  press_info ; 
 int FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,struct st_sensors_platform_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*) ; 

int FUNC11(struct iio_dev *indio_dev)
{
	struct st_sensor_data *press_data = FUNC2(indio_dev);
	struct st_sensors_platform_data *pdata =
		(struct st_sensors_platform_data *)press_data->dev->platform_data;
	int err;

	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &press_info;

	err = FUNC9(indio_dev);
	if (err)
		return err;

	err = FUNC10(indio_dev);
	if (err < 0)
		goto st_press_power_off;

	/*
	 * Skip timestamping channel while declaring available channels to
	 * common st_sensor layer. Look at st_sensors_get_buffer_element() to
	 * see how timestamps are explicitly pushed as last samples block
	 * element.
	 */
	press_data->num_data_channels = press_data->sensor_settings->num_ch - 1;
	indio_dev->channels = press_data->sensor_settings->ch;
	indio_dev->num_channels = press_data->sensor_settings->num_ch;

	press_data->current_fullscale =
		(struct st_sensor_fullscale_avl *)
			&press_data->sensor_settings->fs.fs_avl[0];

	press_data->odr = press_data->sensor_settings->odr.odr_avl[0].hz;

	/* Some devices don't support a data ready pin. */
	if (!pdata && (press_data->sensor_settings->drdy_irq.int1.addr ||
		       press_data->sensor_settings->drdy_irq.int2.addr))
		pdata =	(struct st_sensors_platform_data *)&default_press_pdata;

	err = FUNC7(indio_dev, pdata);
	if (err < 0)
		goto st_press_power_off;

	err = FUNC3(indio_dev);
	if (err < 0)
		goto st_press_power_off;

	if (press_data->irq > 0) {
		err = FUNC5(indio_dev,
						  ST_PRESS_TRIGGER_OPS);
		if (err < 0)
			goto st_press_probe_trigger_error;
	}

	err = FUNC1(indio_dev);
	if (err)
		goto st_press_device_register_error;

	FUNC0(&indio_dev->dev, "registered pressure sensor %s\n",
		 indio_dev->name);

	return err;

st_press_device_register_error:
	if (press_data->irq > 0)
		FUNC6(indio_dev);
st_press_probe_trigger_error:
	FUNC4(indio_dev);
st_press_power_off:
	FUNC8(indio_dev);

	return err;
}