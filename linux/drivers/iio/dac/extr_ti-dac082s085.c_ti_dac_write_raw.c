
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_dac_chip {int* val; int resolution; int lock; int powerdown; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 int EBUSY ;
 int EINVAL ;

 int WRITE_AND_UPDATE (size_t) ;
 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ti_dac_cmd (struct ti_dac_chip*,int ,int) ;

__attribute__((used)) static int ti_dac_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (ti_dac->val[chan->channel] == val)
   return 0;

  if (val >= (1 << ti_dac->resolution) || val < 0)
   return -EINVAL;

  if (ti_dac->powerdown)
   return -EBUSY;

  mutex_lock(&ti_dac->lock);
  ret = ti_dac_cmd(ti_dac, WRITE_AND_UPDATE(chan->channel), val);
  if (!ret)
   ti_dac->val[chan->channel] = val;
  mutex_unlock(&ti_dac->lock);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
