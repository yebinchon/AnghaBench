
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; int channel; int type; } ;
struct adis16260_chip_info {int gyro_max_scale; int gyro_max_val; } ;
struct adis {int spi; } ;
struct adis16260 {struct adis adis; struct adis16260_chip_info* info; } ;
typedef int s16 ;
struct TYPE_2__ {int driver_data; } ;


 int ADIS16260_ERROR_ACTIVE ;
 int ADIS16260_SMPL_PRD ;
 int ADIS16260_SMPL_PRD_DIV_MASK ;
 int ADIS16260_SMPL_PRD_TIME_BASE ;
 int EINVAL ;







 int IIO_DEGREE_TO_RAD (int) ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;

 int ** adis16260_addresses ;
 int adis_read_reg_16 (struct adis*,int ,int*) ;
 int adis_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int ,int*) ;
 struct adis16260* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int,int) ;
 TYPE_1__* spi_get_device_id (int ) ;

__attribute__((used)) static int adis16260_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2,
         long mask)
{
 struct adis16260 *adis16260 = iio_priv(indio_dev);
 const struct adis16260_chip_info *info = adis16260->info;
 struct adis *adis = &adis16260->adis;
 int ret;
 u8 addr;
 s16 val16;

 switch (mask) {
 case 133:
  return adis_single_conversion(indio_dev, chan,
    ADIS16260_ERROR_ACTIVE, val);
 case 131:
  switch (chan->type) {
  case 137:
   *val = info->gyro_max_scale;
   *val2 = info->gyro_max_val;
   return IIO_VAL_FRACTIONAL;
  case 130:
   *val = 0;
   *val2 = IIO_DEGREE_TO_RAD(36630);
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:
   if (chan->channel == 0) {
    *val = 1;
    *val2 = 831500;
   } else {
    *val = 0;
    *val2 = 610500;
   }
   return IIO_VAL_INT_PLUS_MICRO;
  case 129:
   *val = 145;
   *val2 = 300000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 134:
  *val = 250000 / 1453;
  return IIO_VAL_INT;
 case 136:
  addr = adis16260_addresses[chan->scan_index][0];
  ret = adis_read_reg_16(adis, addr, &val16);
  if (ret)
   return ret;

  *val = sign_extend32(val16, 11);
  return IIO_VAL_INT;
 case 135:
  addr = adis16260_addresses[chan->scan_index][1];
  ret = adis_read_reg_16(adis, addr, &val16);
  if (ret)
   return ret;

  *val = val16;
  return IIO_VAL_INT;
 case 132:
  ret = adis_read_reg_16(adis, ADIS16260_SMPL_PRD, &val16);
  if (ret)
   return ret;

  if (spi_get_device_id(adis->spi)->driver_data)

   *val = (val16 & ADIS16260_SMPL_PRD_TIME_BASE) ?
    8 : 256;
  else
   *val = (val16 & ADIS16260_SMPL_PRD_TIME_BASE) ?
    66 : 2048;
  *val /= (val16 & ADIS16260_SMPL_PRD_DIV_MASK) + 1;
  return IIO_VAL_INT;
 }
 return -EINVAL;
}
