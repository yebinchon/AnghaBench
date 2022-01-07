
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_tp_dev {size_t res_index; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct ms_tp_dev* iio_priv (struct iio_dev*) ;
 int* ms5637_samp_freq ;
 int ms_sensors_read_temp_and_pressure (struct ms_tp_dev*,int*,unsigned int*) ;

__attribute__((used)) static int ms5637_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *channel, int *val,
      int *val2, long mask)
{
 int ret;
 int temperature;
 unsigned int pressure;
 struct ms_tp_dev *dev_data = iio_priv(indio_dev);

 switch (mask) {
 case 131:
  ret = ms_sensors_read_temp_and_pressure(dev_data,
       &temperature,
       &pressure);
  if (ret)
   return ret;

  switch (channel->type) {
  case 128:
   *val = temperature;

   return IIO_VAL_INT;
  case 129:
   *val = pressure / 1000;
   *val2 = (pressure % 1000) * 1000;

   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 130:
  *val = ms5637_samp_freq[dev_data->res_index];

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
