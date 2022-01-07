
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; int type; int channel; } ;
struct adis {int dummy; } ;
typedef int s16 ;


 int ADIS16201_ERROR_ACTIVE ;
 int EINVAL ;





 int IIO_G_TO_M_S_2 (int) ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;

 int * adis16201_addresses ;
 int adis_read_reg_16 (struct adis*,int ,int *) ;
 int adis_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int ,int*) ;
 struct adis* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int adis16201_read_raw(struct iio_dev *indio_dev,
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
 case 132:
  return adis_single_conversion(indio_dev, chan,
           ADIS16201_ERROR_ACTIVE, val);
 case 131:
  switch (chan->type) {
  case 128:
   if (chan->channel == 0) {

    *val = 1;
    *val2 = 220000;
   } else {

    *val = 0;
    *val2 = 610000;
   }
   return IIO_VAL_INT_PLUS_MICRO;
  case 129:
   *val = -470;
   *val2 = 0;
   return IIO_VAL_INT_PLUS_MICRO;
  case 135:





   *val = 0;
   *val2 = IIO_G_TO_M_S_2(462400);
   return IIO_VAL_INT_PLUS_NANO;
  case 130:
   *val = 0;
   *val2 = 100000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
  break;
 case 133:





  *val = 25000 / -470 - 1278;
  return IIO_VAL_INT;
 case 134:
  switch (chan->type) {
  case 135:
   bits = 12;
   break;
  case 130:
   bits = 9;
   break;
  default:
   return -EINVAL;
  }
  addr = adis16201_addresses[chan->scan_index];
  ret = adis_read_reg_16(st, addr, &val16);
  if (ret)
   return ret;

  *val = sign_extend32(val16, bits - 1);
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
