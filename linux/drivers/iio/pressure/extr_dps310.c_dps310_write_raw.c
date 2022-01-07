
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct dps310_data {int lock; } ;


 int EINTR ;
 int EINVAL ;




 int dps310_set_pres_precision (struct dps310_data*,int) ;
 int dps310_set_pres_samp_freq (struct dps310_data*,int) ;
 int dps310_set_temp_precision (struct dps310_data*,int) ;
 int dps310_set_temp_samp_freq (struct dps310_data*,int) ;
 struct dps310_data* iio_priv (struct iio_dev*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dps310_write_raw(struct iio_dev *iio,
       struct iio_chan_spec const *chan, int val,
       int val2, long mask)
{
 int rc;
 struct dps310_data *data = iio_priv(iio);

 if (mutex_lock_interruptible(&data->lock))
  return -EINTR;

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 129:
   rc = dps310_set_pres_samp_freq(data, val);
   break;

  case 128:
   rc = dps310_set_temp_samp_freq(data, val);
   break;

  default:
   rc = -EINVAL;
   break;
  }
  break;

 case 131:
  switch (chan->type) {
  case 129:
   rc = dps310_set_pres_precision(data, val);
   break;

  case 128:
   rc = dps310_set_temp_precision(data, val);
   break;

  default:
   rc = -EINVAL;
   break;
  }
  break;

 default:
  rc = -EINVAL;
  break;
 }

 mutex_unlock(&data->lock);
 return rc;
}
