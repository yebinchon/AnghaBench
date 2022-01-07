
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct hi8435_priv {int* threshold_hi; int* threshold_lo; int lock; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int BIT (int) ;
 int EINVAL ;
 int HI8435_GOCENHYS_REG ;
 int HI8435_PSEN_REG ;
 int HI8435_SOCENHYS_REG ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int hi8435_readb (struct hi8435_priv*,int ,int*) ;
 int hi8435_readw (struct hi8435_priv*,int ,int*) ;
 int hi8435_writew (struct hi8435_priv*,int ,int) ;
 struct hi8435_priv* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hi8435_write_event_value(struct iio_dev *idev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        enum iio_event_info info,
        int val, int val2)
{
 struct hi8435_priv *priv = iio_priv(idev);
 int ret;
 u8 mode, psen;
 u16 reg;

 ret = hi8435_readb(priv, HI8435_PSEN_REG, &psen);
 if (ret < 0)
  return ret;


 mode = !!(psen & BIT(chan->channel / 8));

 ret = hi8435_readw(priv, mode ? HI8435_SOCENHYS_REG :
     HI8435_GOCENHYS_REG, &reg);
 if (ret < 0)
  return ret;

 if (dir == IIO_EV_DIR_FALLING) {

  if (val < 2 || val > 21 || (val + 2) > priv->threshold_hi[mode])
   return -EINVAL;

  if (val == priv->threshold_lo[mode])
   return 0;

  priv->threshold_lo[mode] = val;


  if ((priv->threshold_hi[mode] - priv->threshold_lo[mode]) % 2)
   priv->threshold_hi[mode]--;
 } else if (dir == IIO_EV_DIR_RISING) {

  if (val < 3 || val > 22 || val < (priv->threshold_lo[mode] + 2))
   return -EINVAL;

  if (val == priv->threshold_hi[mode])
   return 0;

  priv->threshold_hi[mode] = val;


  if ((priv->threshold_hi[mode] - priv->threshold_lo[mode]) % 2)
   priv->threshold_lo[mode]++;
 }


 mutex_lock(&priv->lock);

 ret = hi8435_readw(priv, mode ? HI8435_SOCENHYS_REG :
     HI8435_GOCENHYS_REG, &reg);
 if (ret < 0) {
  mutex_unlock(&priv->lock);
  return ret;
 }


 reg = priv->threshold_hi[mode] - priv->threshold_lo[mode];
 reg <<= 8;

 reg |= (priv->threshold_hi[mode] + priv->threshold_lo[mode]);

 ret = hi8435_writew(priv, mode ? HI8435_SOCENHYS_REG :
      HI8435_GOCENHYS_REG, reg);

 mutex_unlock(&priv->lock);

 return ret;
}
