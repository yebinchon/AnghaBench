
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct ads1015_data {int lock; } ;


 int EINVAL ;


 int ads1015_set_data_rate (struct ads1015_data*,int ,int) ;
 int ads1015_set_scale (struct ads1015_data*,struct iio_chan_spec const*,int,int) ;
 struct ads1015_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ads1015_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int val,
        int val2, long mask)
{
 struct ads1015_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->lock);
 switch (mask) {
 case 128:
  ret = ads1015_set_scale(data, chan, val, val2);
  break;
 case 129:
  ret = ads1015_set_data_rate(data, chan->address, val);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 mutex_unlock(&data->lock);

 return ret;
}
