
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_sensor_fullscale_avl {int dummy; } ;
struct st_sensor_data {TYPE_3__* sensor_settings; struct st_sensor_fullscale_avl* current_fullscale; } ;
struct iio_dev {int dev; } ;
struct TYPE_5__ {scalar_t__ addr; TYPE_1__* fs_avl; int mask; } ;
struct TYPE_6__ {TYPE_2__ fs; } ;
struct TYPE_4__ {int value; } ;


 int dev_err (int *,char*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_sensors_match_fs (TYPE_3__*,unsigned int,int*) ;
 int st_sensors_write_data_with_mask (struct iio_dev*,scalar_t__,int ,int ) ;

__attribute__((used)) static int st_sensors_set_fullscale(struct iio_dev *indio_dev, unsigned int fs)
{
 int err, i = 0;
 struct st_sensor_data *sdata = iio_priv(indio_dev);

 if (sdata->sensor_settings->fs.addr == 0)
  return 0;

 err = st_sensors_match_fs(sdata->sensor_settings, fs, &i);
 if (err < 0)
  goto st_accel_set_fullscale_error;

 err = st_sensors_write_data_with_mask(indio_dev,
    sdata->sensor_settings->fs.addr,
    sdata->sensor_settings->fs.mask,
    sdata->sensor_settings->fs.fs_avl[i].value);
 if (err < 0)
  goto st_accel_set_fullscale_error;

 sdata->current_fullscale = (struct st_sensor_fullscale_avl *)
     &sdata->sensor_settings->fs.fs_avl[i];
 return err;

st_accel_set_fullscale_error:
 dev_err(&indio_dev->dev, "failed to set new fullscale.\n");
 return err;
}
