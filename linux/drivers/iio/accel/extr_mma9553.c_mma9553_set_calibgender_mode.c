
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int filter; } ;
struct mma9553_data {int mutex; TYPE_1__ conf; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 int MMA9553_MASK_CONF_MALE ;
 int MMA9553_REG_CONF_FILTER ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;
 int mma9553_set_config (struct mma9553_data*,int ,int *,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9553_set_calibgender_mode(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan,
     unsigned int mode)
{
 struct mma9553_data *data = iio_priv(indio_dev);
 u8 gender = !mode;
 int ret;

 if ((mode != 0) && (mode != 1))
  return -EINVAL;
 mutex_lock(&data->mutex);
 ret = mma9553_set_config(data, MMA9553_REG_CONF_FILTER,
     &data->conf.filter, gender,
     MMA9553_MASK_CONF_MALE);
 mutex_unlock(&data->mutex);

 return ret;
}
