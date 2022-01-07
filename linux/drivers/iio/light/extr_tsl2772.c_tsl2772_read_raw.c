
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t als_gain; size_t prox_gain; int als_gain_trim; int als_time; } ;
struct TYPE_3__ {int lux; int als_ch0; int als_ch1; } ;
struct tsl2772_chip {int prox_data; size_t id; TYPE_2__ settings; TYPE_1__ als_cur_info; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; int channel; } ;


 int EINVAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int* tsl2772_als_gain ;
 int tsl2772_get_lux (struct iio_dev*) ;
 int tsl2772_get_prox (struct iio_dev*) ;
 int** tsl2772_int_time_avail ;
 int* tsl2772_prox_gain ;

__attribute__((used)) static int tsl2772_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val,
       int *val2,
       long mask)
{
 struct tsl2772_chip *chip = iio_priv(indio_dev);

 switch (mask) {
 case 132:
  switch (chan->type) {
  case 129:
   tsl2772_get_lux(indio_dev);
   *val = chip->als_cur_info.lux;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 131:
  switch (chan->type) {
  case 130:
   tsl2772_get_lux(indio_dev);
   if (chan->channel == 0)
    *val = chip->als_cur_info.als_ch0;
   else
    *val = chip->als_cur_info.als_ch1;
   return IIO_VAL_INT;
  case 128:
   tsl2772_get_prox(indio_dev);
   *val = chip->prox_data;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
  break;
 case 134:
  if (chan->type == 129)
   *val = tsl2772_als_gain[chip->settings.als_gain];
  else
   *val = tsl2772_prox_gain[chip->settings.prox_gain];
  return IIO_VAL_INT;
 case 135:
  *val = chip->settings.als_gain_trim;
  return IIO_VAL_INT;
 case 133:
  *val = 0;
  *val2 = (256 - chip->settings.als_time) *
   tsl2772_int_time_avail[chip->id][3];
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
