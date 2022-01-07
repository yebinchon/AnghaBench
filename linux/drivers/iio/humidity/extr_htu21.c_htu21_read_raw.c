
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_ht_dev {size_t res_index; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int* htu21_samp_freq ;
 struct ms_ht_dev* iio_priv (struct iio_dev*) ;
 int ms_sensors_ht_read_humidity (struct ms_ht_dev*,unsigned int*) ;
 int ms_sensors_ht_read_temperature (struct ms_ht_dev*,int*) ;

__attribute__((used)) static int htu21_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *channel, int *val,
     int *val2, long mask)
{
 int ret, temperature;
 unsigned int humidity;
 struct ms_ht_dev *dev_data = iio_priv(indio_dev);

 switch (mask) {
 case 131:
  switch (channel->type) {
  case 128:
   ret = ms_sensors_ht_read_temperature(dev_data,
            &temperature);
   if (ret)
    return ret;
   *val = temperature;

   return IIO_VAL_INT;
  case 129:
   ret = ms_sensors_ht_read_humidity(dev_data,
         &humidity);
   if (ret)
    return ret;
   *val = humidity;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 130:
  *val = htu21_samp_freq[dev_data->res_index];

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
