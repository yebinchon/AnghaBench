
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sca3000_state {int* rx; int lock; TYPE_1__* info; int mo_det_use_count; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int type; } ;
typedef int __be16 ;
struct TYPE_2__ {int scale; } ;


 int EBUSY ;
 int EINVAL ;
 int IIO_ACCEL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int SCA3000_REG_TEMP_MSB_ADDR ;
 int be16_to_cpup (int *) ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ** sca3000_addresses ;
 int sca3000_read_3db_freq (struct sca3000_state*,int*) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;
 int sca3000_read_raw_samp_freq (struct sca3000_state*,int*) ;

__attribute__((used)) static int sca3000_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val,
       int *val2,
       long mask)
{
 struct sca3000_state *st = iio_priv(indio_dev);
 int ret;
 u8 address;

 switch (mask) {
 case 130:
  mutex_lock(&st->lock);
  if (chan->type == IIO_ACCEL) {
   if (st->mo_det_use_count) {
    mutex_unlock(&st->lock);
    return -EBUSY;
   }
   address = sca3000_addresses[chan->address][0];
   ret = sca3000_read_data_short(st, address, 2);
   if (ret < 0) {
    mutex_unlock(&st->lock);
    return ret;
   }
   *val = (be16_to_cpup((__be16 *)st->rx) >> 3) & 0x1FFF;
   *val = ((*val) << (sizeof(*val) * 8 - 13)) >>
    (sizeof(*val) * 8 - 13);
  } else {

   ret = sca3000_read_data_short(st,
            SCA3000_REG_TEMP_MSB_ADDR,
            2);
   if (ret < 0) {
    mutex_unlock(&st->lock);
    return ret;
   }
   *val = ((st->rx[0] & 0x3F) << 3) |
          ((st->rx[1] & 0xE0) >> 5);
  }
  mutex_unlock(&st->lock);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  if (chan->type == IIO_ACCEL)
   *val2 = st->info->scale;
  else
   *val2 = 555556;
  return IIO_VAL_INT_PLUS_MICRO;
 case 131:
  *val = -214;
  *val2 = 600000;
  return IIO_VAL_INT_PLUS_MICRO;
 case 129:
  mutex_lock(&st->lock);
  ret = sca3000_read_raw_samp_freq(st, val);
  mutex_unlock(&st->lock);
  return ret ? ret : IIO_VAL_INT;
 case 132:
  mutex_lock(&st->lock);
  ret = sca3000_read_3db_freq(st, val);
  mutex_unlock(&st->lock);
  return ret;
 default:
  return -EINVAL;
 }
}
