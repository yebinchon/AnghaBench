
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29018_chip {int calibscale; int ucalibscale; int lock; scalar_t__ suspended; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EBUSY ;
 int EINVAL ;



 int IIO_LIGHT ;
 struct isl29018_chip* iio_priv (struct iio_dev*) ;
 int isl29018_set_integration_time (struct isl29018_chip*,int) ;
 int isl29018_set_scale (struct isl29018_chip*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int isl29018_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int val,
         int val2,
         long mask)
{
 struct isl29018_chip *chip = iio_priv(indio_dev);
 int ret = -EINVAL;

 mutex_lock(&chip->lock);
 if (chip->suspended) {
  ret = -EBUSY;
  goto write_done;
 }
 switch (mask) {
 case 130:
  if (chan->type == IIO_LIGHT) {
   chip->calibscale = val;
   chip->ucalibscale = val2;
   ret = 0;
  }
  break;
 case 129:
  if (chan->type == IIO_LIGHT && !val)
   ret = isl29018_set_integration_time(chip, val2);
  break;
 case 128:
  if (chan->type == IIO_LIGHT)
   ret = isl29018_set_scale(chip, val, val2);
  break;
 default:
  break;
 }

write_done:
 mutex_unlock(&chip->lock);

 return ret;
}
