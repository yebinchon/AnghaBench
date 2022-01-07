
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl4531_data {int int_time; int lock; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int TSL4531_CONFIG ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct tsl4531_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tsl4531_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct tsl4531_data *data = iio_priv(indio_dev);
 int int_time, ret;

 switch (mask) {
 case 128:
  if (val != 0)
   return -EINVAL;
  if (val2 == 400000)
   int_time = 0;
  else if (val2 == 200000)
   int_time = 1;
  else if (val2 == 100000)
   int_time = 2;
  else
   return -EINVAL;
  mutex_lock(&data->lock);
  ret = i2c_smbus_write_byte_data(data->client,
   TSL4531_CONFIG, int_time);
  if (ret >= 0)
   data->int_time = int_time;
  mutex_unlock(&data->lock);
  return ret;
 default:
  return -EINVAL;
 }
}
