#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct st_sensor_odr_avl {int /*<<< orphan*/  hz; int /*<<< orphan*/  value; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct st_sensor_data {int enabled; int /*<<< orphan*/  odr; TYPE_3__* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ addr; scalar_t__ mask; } ;
struct TYPE_4__ {scalar_t__ addr; scalar_t__ mask; } ;
struct TYPE_6__ {TYPE_2__ odr; TYPE_1__ pw; } ;

/* Variables and functions */
 struct st_sensor_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (TYPE_3__*,unsigned int,struct st_sensor_odr_avl*) ; 
 int FUNC2 (struct iio_dev*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC3(struct iio_dev *indio_dev, unsigned int odr)
{
	int err;
	struct st_sensor_odr_avl odr_out = {0, 0};
	struct st_sensor_data *sdata = FUNC0(indio_dev);

	if (!sdata->sensor_settings->odr.addr)
		return 0;

	err = FUNC1(sdata->sensor_settings, odr, &odr_out);
	if (err < 0)
		goto st_sensors_match_odr_error;

	if ((sdata->sensor_settings->odr.addr ==
					sdata->sensor_settings->pw.addr) &&
				(sdata->sensor_settings->odr.mask ==
					sdata->sensor_settings->pw.mask)) {
		if (sdata->enabled == true) {
			err = FUNC2(indio_dev,
				sdata->sensor_settings->odr.addr,
				sdata->sensor_settings->odr.mask,
				odr_out.value);
		} else {
			err = 0;
		}
	} else {
		err = FUNC2(indio_dev,
			sdata->sensor_settings->odr.addr,
			sdata->sensor_settings->odr.mask,
			odr_out.value);
	}
	if (err >= 0)
		sdata->odr = odr_out.hz;

st_sensors_match_odr_error:
	return err;
}