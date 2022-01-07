
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ti_dac_chip {int val; int resolution; int lock; int powerdown; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EBUSY ;
 int EINVAL ;

 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ti_dac_cmd (struct ti_dac_chip*,int ,int) ;
 int ti_dac_get_power (struct ti_dac_chip*,int ) ;

__attribute__((used)) static int ti_dac_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);
 u8 power = ti_dac_get_power(ti_dac, ti_dac->powerdown);
 int ret;

 switch (mask) {
 case 128:
  if (ti_dac->val == val)
   return 0;

  if (val >= (1 << ti_dac->resolution) || val < 0)
   return -EINVAL;

  if (ti_dac->powerdown)
   return -EBUSY;

  mutex_lock(&ti_dac->lock);
  ret = ti_dac_cmd(ti_dac, power, val);
  if (!ret)
   ti_dac->val = val;
  mutex_unlock(&ti_dac->lock);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
