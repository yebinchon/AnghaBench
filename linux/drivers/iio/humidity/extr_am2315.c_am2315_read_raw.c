
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct am2315_sensor_data {int hum_data; int temp_data; } ;
struct am2315_data {int dummy; } ;


 int EINVAL ;


 int IIO_HUMIDITYRELATIVE ;
 int IIO_VAL_INT ;
 int am2315_read_data (struct am2315_data*,struct am2315_sensor_data*) ;
 struct am2315_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int am2315_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 int ret;
 struct am2315_sensor_data sensor_data;
 struct am2315_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  ret = am2315_read_data(data, &sensor_data);
  if (ret < 0)
   return ret;
  *val = (chan->type == IIO_HUMIDITYRELATIVE) ?
    sensor_data.hum_data : sensor_data.temp_data;
  return IIO_VAL_INT;
 case 128:
  *val = 100;
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
