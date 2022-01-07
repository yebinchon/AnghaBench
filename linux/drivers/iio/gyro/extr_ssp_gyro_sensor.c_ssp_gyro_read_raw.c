
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ssp_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct iio_dev {TYPE_2__ dev; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_3__ {int parent; } ;


 int EINVAL ;

 int IIO_VAL_INT_PLUS_MICRO ;
 int SSP_GYROSCOPE_SENSOR ;
 struct ssp_data* dev_get_drvdata (int ) ;
 int ssp_convert_to_freq (int ,int*,int*) ;
 int ssp_get_sensor_delay (struct ssp_data*,int ) ;

__attribute__((used)) static int ssp_gyro_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int *val,
        int *val2, long mask)
{
 u32 t;
 struct ssp_data *data = dev_get_drvdata(indio_dev->dev.parent->parent);

 switch (mask) {
 case 128:
  t = ssp_get_sensor_delay(data, SSP_GYROSCOPE_SENSOR);
  ssp_convert_to_freq(t, val, val2);
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  break;
 }

 return -EINVAL;
}
