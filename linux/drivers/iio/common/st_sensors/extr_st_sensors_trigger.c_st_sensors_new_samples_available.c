
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_sensor_data {TYPE_1__* sensor_settings; int dev; int regmap; } ;
struct iio_dev {int active_scan_mask; } ;
struct TYPE_6__ {int mask; int addr; } ;
struct TYPE_5__ {TYPE_3__ stat_drdy; } ;
struct TYPE_4__ {TYPE_2__ drdy_irq; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int st_sensors_new_samples_available(struct iio_dev *indio_dev,
         struct st_sensor_data *sdata)
{
 int ret, status;


 if (!sdata->sensor_settings->drdy_irq.stat_drdy.addr)
  return -EINVAL;


 if (!indio_dev->active_scan_mask)
  return 0;

 ret = regmap_read(sdata->regmap,
     sdata->sensor_settings->drdy_irq.stat_drdy.addr,
     &status);
 if (ret < 0) {
  dev_err(sdata->dev,
   "error checking samples available\n");
  return ret;
 }

 if (status & sdata->sensor_settings->drdy_irq.stat_drdy.mask)
  return 1;

 return 0;
}
