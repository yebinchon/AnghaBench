
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct ak8974 {TYPE_1__* i2c; int lock; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EIO ;

 int IIO_VAL_INT ;
 int ak8974_getresult (struct ak8974*,int *) ;
 int ak8974_trigmeas (struct ak8974*) ;
 int dev_err (int *,char*) ;
 struct ak8974* iio_priv (struct iio_dev*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static int ak8974_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2,
      long mask)
{
 struct ak8974 *ak8974 = iio_priv(indio_dev);
 __le16 hw_values[3];
 int ret = -EINVAL;

 pm_runtime_get_sync(&ak8974->i2c->dev);
 mutex_lock(&ak8974->lock);

 switch (mask) {
 case 128:
  if (chan->address > 2) {
   dev_err(&ak8974->i2c->dev, "faulty channel address\n");
   ret = -EIO;
   goto out_unlock;
  }
  ret = ak8974_trigmeas(ak8974);
  if (ret)
   goto out_unlock;
  ret = ak8974_getresult(ak8974, hw_values);
  if (ret)
   goto out_unlock;





  *val = le16_to_cpu(hw_values[chan->address]);

  ret = IIO_VAL_INT;
 }

 out_unlock:
 mutex_unlock(&ak8974->lock);
 pm_runtime_mark_last_busy(&ak8974->i2c->dev);
 pm_runtime_put_autosuspend(&ak8974->i2c->dev);

 return ret;
}
