
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; int type; int channel; } ;
struct adis {int dummy; } ;
typedef int s16 ;


 int ADIS16209_ERROR_ACTIVE ;
 int EINVAL ;





 int IIO_G_TO_M_S_2 (int) ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;

 int ** adis16209_addresses ;
 int adis_read_reg_16 (struct adis*,int ,int *) ;
 int adis_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int ,int*) ;
 struct adis* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int adis16209_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2,
         long mask)
{
 struct adis *st = iio_priv(indio_dev);
 int ret;
 int bits;
 u8 addr;
 s16 val16;

 switch (mask) {
 case 133:
  return adis_single_conversion(indio_dev, chan,
   ADIS16209_ERROR_ACTIVE, val);
 case 132:
  switch (chan->type) {
  case 128:
   *val = 0;
   switch (chan->channel) {
   case 0:
    *val2 = 305180;
    break;
   case 1:
    *val2 = 610500;
    break;
   default:
    return -EINVAL;
   }
   return IIO_VAL_INT_PLUS_MICRO;
  case 129:
   *val = -470;
   *val2 = 0;
   return IIO_VAL_INT_PLUS_MICRO;
  case 136:





   *val = 0;
   *val2 = IIO_G_TO_M_S_2(244140);
   return IIO_VAL_INT_PLUS_NANO;
  case 131:
  case 130:




   *val = 0;
   *val2 = 25000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
  break;
 case 134:





  *val = 25000 / -470 - 0x4FE;
  return IIO_VAL_INT;
 case 135:
  switch (chan->type) {
  case 136:
   bits = 14;
   break;
  default:
   return -EINVAL;
  }
  addr = adis16209_addresses[chan->scan_index][0];
  ret = adis_read_reg_16(st, addr, &val16);
  if (ret)
   return ret;

  *val = sign_extend32(val16, bits - 1);
  return IIO_VAL_INT;
 }
 return -EINVAL;
}
