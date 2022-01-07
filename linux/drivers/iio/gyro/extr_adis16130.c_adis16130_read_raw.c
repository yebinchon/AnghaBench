
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int type; int address; } ;


 int EINVAL ;





 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int adis16130_spi_read (struct iio_dev*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adis16130_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2,
         long mask)
{
 int ret;
 u32 temp;

 switch (mask) {
 case 130:

  mutex_lock(&indio_dev->mlock);
  ret = adis16130_spi_read(indio_dev, chan->address, &temp);
  mutex_unlock(&indio_dev->mlock);
  if (ret)
   return ret;
  *val = temp;
  return IIO_VAL_INT;
 case 129:
  switch (chan->type) {
  case 132:

   *val = 250;
   *val2 = 336440817;
   return IIO_VAL_FRACTIONAL;
  case 128:

   *val = 105000;
   *val2 = 9516048 - 8036283;
   return IIO_VAL_FRACTIONAL;
  default:
   return -EINVAL;
  }
 case 131:
  switch (chan->type) {
  case 132:
   *val = -8388608;
   return IIO_VAL_INT;
  case 128:
   *val = -8036283;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 }

 return -EINVAL;
}
