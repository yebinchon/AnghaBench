
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pa12203001_data {int lock; } ;
struct iio_dev {int dummy; } ;


 struct pa12203001_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pa12203001_als_enable (struct pa12203001_data*,int ) ;
 int pa12203001_px_enable (struct pa12203001_data*,int ) ;

__attribute__((used)) static int pa12203001_power_chip(struct iio_dev *indio_dev, u8 state)
{
 struct pa12203001_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->lock);
 ret = pa12203001_als_enable(data, state);
 if (ret < 0)
  goto out;

 ret = pa12203001_px_enable(data, state);

out:
 mutex_unlock(&data->lock);
 return ret;
}
