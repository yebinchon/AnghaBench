
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsl2563_chip {int data0; int cover_comp_gain; int data1; int lock; int calib1; int calib0; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int type; } ;


 int EINVAL ;





 int IIO_MOD_LIGHT_BOTH ;
 int IIO_VAL_INT ;
 struct tsl2563_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tsl2563_adc_to_lux (int,int) ;
 int tsl2563_calib_adc (int,int ) ;
 int tsl2563_calib_to_sysfs (int ) ;
 int tsl2563_get_adc (struct tsl2563_chip*) ;

__attribute__((used)) static int tsl2563_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val,
       int *val2,
       long mask)
{
 int ret = -EINVAL;
 u32 calib0, calib1;
 struct tsl2563_chip *chip = iio_priv(indio_dev);

 mutex_lock(&chip->lock);
 switch (mask) {
 case 130:
 case 131:
  switch (chan->type) {
  case 128:
   ret = tsl2563_get_adc(chip);
   if (ret)
    goto error_ret;
   calib0 = tsl2563_calib_adc(chip->data0, chip->calib0) *
    chip->cover_comp_gain;
   calib1 = tsl2563_calib_adc(chip->data1, chip->calib1) *
    chip->cover_comp_gain;
   *val = tsl2563_adc_to_lux(calib0, calib1);
   ret = IIO_VAL_INT;
   break;
  case 129:
   ret = tsl2563_get_adc(chip);
   if (ret)
    goto error_ret;
   if (chan->channel2 == IIO_MOD_LIGHT_BOTH)
    *val = chip->data0;
   else
    *val = chip->data1;
   ret = IIO_VAL_INT;
   break;
  default:
   break;
  }
  break;

 case 132:
  if (chan->channel2 == IIO_MOD_LIGHT_BOTH)
   *val = tsl2563_calib_to_sysfs(chip->calib0);
  else
   *val = tsl2563_calib_to_sysfs(chip->calib1);
  ret = IIO_VAL_INT;
  break;
 default:
  ret = -EINVAL;
  goto error_ret;
 }

error_ret:
 mutex_unlock(&chip->lock);
 return ret;
}
