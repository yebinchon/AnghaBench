
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9551_data {int mutex; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;





 struct mma9551_data* iio_priv (struct iio_dev*) ;
 int mma9551_read_accel_chan (int ,struct iio_chan_spec const*,int*,int*) ;
 int mma9551_read_accel_scale (int*,int*) ;
 int mma9551_read_incli_chan (int ,struct iio_chan_spec const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9551_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mma9551_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 128:
   mutex_lock(&data->mutex);
   ret = mma9551_read_incli_chan(data->client, chan, val);
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 case 130:
  switch (chan->type) {
  case 132:
   mutex_lock(&data->mutex);
   ret = mma9551_read_accel_chan(data->client,
            chan, val, val2);
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 case 129:
  switch (chan->type) {
  case 132:
   return mma9551_read_accel_scale(val, val2);
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
