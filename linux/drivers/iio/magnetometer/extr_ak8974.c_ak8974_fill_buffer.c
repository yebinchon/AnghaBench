
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ak8974 {TYPE_1__* i2c; int lock; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int ak8974_getresult (struct ak8974*,int *) ;
 int ak8974_trigmeas (struct ak8974*) ;
 int dev_err (int *,char*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ak8974* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static void ak8974_fill_buffer(struct iio_dev *indio_dev)
{
 struct ak8974 *ak8974 = iio_priv(indio_dev);
 int ret;
 __le16 hw_values[8];

 pm_runtime_get_sync(&ak8974->i2c->dev);
 mutex_lock(&ak8974->lock);

 ret = ak8974_trigmeas(ak8974);
 if (ret) {
  dev_err(&ak8974->i2c->dev, "error triggering measure\n");
  goto out_unlock;
 }
 ret = ak8974_getresult(ak8974, hw_values);
 if (ret) {
  dev_err(&ak8974->i2c->dev, "error getting measures\n");
  goto out_unlock;
 }

 iio_push_to_buffers_with_timestamp(indio_dev, hw_values,
        iio_get_time_ns(indio_dev));

 out_unlock:
 mutex_unlock(&ak8974->lock);
 pm_runtime_mark_last_busy(&ak8974->i2c->dev);
 pm_runtime_put_autosuspend(&ak8974->i2c->dev);
}
