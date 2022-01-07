
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct st_sensor_data {TYPE_2__* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int mask; scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ enable_axis; } ;


 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_sensors_write_data_with_mask (struct iio_dev*,scalar_t__,int ,int ) ;

int st_sensors_set_axis_enable(struct iio_dev *indio_dev, u8 axis_enable)
{
 struct st_sensor_data *sdata = iio_priv(indio_dev);
 int err = 0;

 if (sdata->sensor_settings->enable_axis.addr)
  err = st_sensors_write_data_with_mask(indio_dev,
    sdata->sensor_settings->enable_axis.addr,
    sdata->sensor_settings->enable_axis.mask,
    axis_enable);
 return err;
}
