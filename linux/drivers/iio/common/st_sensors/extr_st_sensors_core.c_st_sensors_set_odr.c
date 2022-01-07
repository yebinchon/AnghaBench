
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_sensor_odr_avl {int hz; int value; int member_1; int member_0; } ;
struct st_sensor_data {int enabled; int odr; TYPE_3__* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ addr; scalar_t__ mask; } ;
struct TYPE_4__ {scalar_t__ addr; scalar_t__ mask; } ;
struct TYPE_6__ {TYPE_2__ odr; TYPE_1__ pw; } ;


 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_sensors_match_odr (TYPE_3__*,unsigned int,struct st_sensor_odr_avl*) ;
 int st_sensors_write_data_with_mask (struct iio_dev*,scalar_t__,scalar_t__,int ) ;

int st_sensors_set_odr(struct iio_dev *indio_dev, unsigned int odr)
{
 int err;
 struct st_sensor_odr_avl odr_out = {0, 0};
 struct st_sensor_data *sdata = iio_priv(indio_dev);

 if (!sdata->sensor_settings->odr.addr)
  return 0;

 err = st_sensors_match_odr(sdata->sensor_settings, odr, &odr_out);
 if (err < 0)
  goto st_sensors_match_odr_error;

 if ((sdata->sensor_settings->odr.addr ==
     sdata->sensor_settings->pw.addr) &&
    (sdata->sensor_settings->odr.mask ==
     sdata->sensor_settings->pw.mask)) {
  if (sdata->enabled == 1) {
   err = st_sensors_write_data_with_mask(indio_dev,
    sdata->sensor_settings->odr.addr,
    sdata->sensor_settings->odr.mask,
    odr_out.value);
  } else {
   err = 0;
  }
 } else {
  err = st_sensors_write_data_with_mask(indio_dev,
   sdata->sensor_settings->odr.addr,
   sdata->sensor_settings->odr.mask,
   odr_out.value);
 }
 if (err >= 0)
  sdata->odr = odr_out.hz;

st_sensors_match_odr_error:
 return err;
}
