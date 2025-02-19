
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_sensors_platform_data {int drdy_int_pin; scalar_t__ open_drain; } ;
struct st_sensor_data {int drdy_int_pin; int int_pin_open_drain; TYPE_4__* sensor_settings; } ;
struct iio_dev {int dev; } ;
struct TYPE_6__ {int addr_od; int mask; int addr; } ;
struct TYPE_5__ {int addr_od; int mask; int addr; } ;
struct TYPE_7__ {TYPE_2__ int2; TYPE_1__ int1; } ;
struct TYPE_8__ {TYPE_3__ drdy_irq; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int st_sensors_set_drdy_int_pin(struct iio_dev *indio_dev,
     struct st_sensors_platform_data *pdata)
{
 struct st_sensor_data *sdata = iio_priv(indio_dev);


 if (!sdata->sensor_settings->drdy_irq.int1.addr &&
     !sdata->sensor_settings->drdy_irq.int2.addr) {
  if (pdata->drdy_int_pin)
   dev_info(&indio_dev->dev,
     "DRDY on pin INT%d specified, but sensor "
     "does not support interrupts\n",
     pdata->drdy_int_pin);
  return 0;
 }

 switch (pdata->drdy_int_pin) {
 case 1:
  if (!sdata->sensor_settings->drdy_irq.int1.mask) {
   dev_err(&indio_dev->dev,
     "DRDY on INT1 not available.\n");
   return -EINVAL;
  }
  sdata->drdy_int_pin = 1;
  break;
 case 2:
  if (!sdata->sensor_settings->drdy_irq.int2.mask) {
   dev_err(&indio_dev->dev,
     "DRDY on INT2 not available.\n");
   return -EINVAL;
  }
  sdata->drdy_int_pin = 2;
  break;
 default:
  dev_err(&indio_dev->dev, "DRDY on pdata not valid.\n");
  return -EINVAL;
 }

 if (pdata->open_drain) {
  if (!sdata->sensor_settings->drdy_irq.int1.addr_od &&
      !sdata->sensor_settings->drdy_irq.int2.addr_od)
   dev_err(&indio_dev->dev,
    "open drain requested but unsupported.\n");
  else
   sdata->int_pin_open_drain = 1;
 }

 return 0;
}
