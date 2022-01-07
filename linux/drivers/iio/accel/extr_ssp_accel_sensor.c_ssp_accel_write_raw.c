
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssp_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct iio_dev {TYPE_2__ dev; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_3__ {int parent; } ;


 int EINVAL ;

 int SSP_ACCELEROMETER_SENSOR ;
 int dev_err (TYPE_2__*,char*) ;
 struct ssp_data* dev_get_drvdata (int ) ;
 int ssp_change_delay (struct ssp_data*,int ,int) ;
 int ssp_convert_to_time (int,int) ;

__attribute__((used)) static int ssp_accel_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan, int val,
          int val2, long mask)
{
 int ret;
 struct ssp_data *data = dev_get_drvdata(indio_dev->dev.parent->parent);

 switch (mask) {
 case 128:
  ret = ssp_convert_to_time(val, val2);
  ret = ssp_change_delay(data, SSP_ACCELEROMETER_SENSOR, ret);
  if (ret < 0)
   dev_err(&indio_dev->dev, "accel sensor enable fail\n");

  return ret;
 default:
  break;
 }

 return -EINVAL;
}
