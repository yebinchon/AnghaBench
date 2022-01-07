
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct st_sensor_data {int hw_irq_trigger; int drdy_int_pin; TYPE_6__* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct TYPE_10__ {scalar_t__ addr; scalar_t__ mask; } ;
struct TYPE_9__ {scalar_t__ addr; scalar_t__ mask; } ;
struct TYPE_8__ {scalar_t__ en_addr; scalar_t__ en_mask; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_11__ {TYPE_4__ int2; TYPE_3__ int1; TYPE_2__ ig1; TYPE_1__ stat_drdy; } ;
struct TYPE_12__ {TYPE_5__ drdy_irq; } ;


 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_sensors_write_data_with_mask (struct iio_dev*,scalar_t__,scalar_t__,int) ;

int st_sensors_set_dataready_irq(struct iio_dev *indio_dev, bool enable)
{
 int err;
 u8 drdy_addr, drdy_mask;
 struct st_sensor_data *sdata = iio_priv(indio_dev);

 if (!sdata->sensor_settings->drdy_irq.int1.addr &&
     !sdata->sensor_settings->drdy_irq.int2.addr) {






  if (sdata->sensor_settings->drdy_irq.stat_drdy.addr)
   sdata->hw_irq_trigger = enable;
  return 0;
 }


 if (sdata->sensor_settings->drdy_irq.ig1.en_addr > 0) {
  err = st_sensors_write_data_with_mask(indio_dev,
    sdata->sensor_settings->drdy_irq.ig1.en_addr,
    sdata->sensor_settings->drdy_irq.ig1.en_mask,
    (int)enable);
  if (err < 0)
   goto st_accel_set_dataready_irq_error;
 }

 if (sdata->drdy_int_pin == 1) {
  drdy_addr = sdata->sensor_settings->drdy_irq.int1.addr;
  drdy_mask = sdata->sensor_settings->drdy_irq.int1.mask;
 } else {
  drdy_addr = sdata->sensor_settings->drdy_irq.int2.addr;
  drdy_mask = sdata->sensor_settings->drdy_irq.int2.mask;
 }


 sdata->hw_irq_trigger = enable;


 err = st_sensors_write_data_with_mask(indio_dev, drdy_addr,
           drdy_mask, (int)enable);

st_accel_set_dataready_irq_error:
 return err;
}
