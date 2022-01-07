
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct hp03_priv {int pressure; int temp; int lock; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int hp03_update_temp_pressure (struct hp03_priv*) ;
 struct hp03_priv* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hp03_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct hp03_priv *priv = iio_priv(indio_dev);
 int ret;

 mutex_lock(&priv->lock);
 ret = hp03_update_temp_pressure(priv);
 mutex_unlock(&priv->lock);

 if (ret)
  return ret;

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 129:
   *val = priv->pressure;
   return IIO_VAL_INT;
  case 128:
   *val = priv->temp;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
  break;
 case 130:
  switch (chan->type) {
  case 129:
   *val = 0;
   *val2 = 1000;
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:
   *val = 10;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
