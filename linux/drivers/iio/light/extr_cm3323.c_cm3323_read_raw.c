
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct cm3323_data {int mutex; int client; } ;
struct TYPE_2__ {int val; int val2; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int cm3323_get_it_bits (struct cm3323_data*) ;
 TYPE_1__* cm3323_int_time ;
 int i2c_smbus_read_word_data (int ,int ) ;
 struct cm3323_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cm3323_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan, int *val,
      int *val2, long mask)
{
 int ret;
 struct cm3323_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  mutex_lock(&data->mutex);
  ret = i2c_smbus_read_word_data(data->client, chan->address);
  if (ret < 0) {
   mutex_unlock(&data->mutex);
   return ret;
  }
  *val = ret;
  mutex_unlock(&data->mutex);

  return IIO_VAL_INT;
 case 129:
  mutex_lock(&data->mutex);
  ret = cm3323_get_it_bits(data);
  if (ret < 0) {
   mutex_unlock(&data->mutex);
   return ret;
  }

  *val = cm3323_int_time[ret].val;
  *val2 = cm3323_int_time[ret].val2;
  mutex_unlock(&data->mutex);

  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
