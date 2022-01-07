
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int als_gain_trim; size_t als_gain; int als_time; } ;
struct TYPE_4__ {int als_ch0; int als_ch1; } ;
struct tsl2583_chip {int als_mutex; TYPE_2__ als_settings; TYPE_1__ als_cur_info; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel2; } ;
struct TYPE_6__ {int mean; } ;


 int EINVAL ;





 int IIO_LIGHT ;
 int IIO_MOD_LIGHT_BOTH ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 TYPE_3__* gainadj ;
 struct tsl2583_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tsl2583_get_lux (struct iio_dev*) ;
 int tsl2583_set_pm_runtime_busy (struct tsl2583_chip*,int) ;

__attribute__((used)) static int tsl2583_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct tsl2583_chip *chip = iio_priv(indio_dev);
 int ret, pm_ret;

 ret = tsl2583_set_pm_runtime_busy(chip, 1);
 if (ret < 0)
  return ret;

 mutex_lock(&chip->als_mutex);

 ret = -EINVAL;
 switch (mask) {
 case 128:
  if (chan->type == IIO_LIGHT) {
   ret = tsl2583_get_lux(indio_dev);
   if (ret < 0)
    goto read_done;
   if (chan->channel2 == IIO_MOD_LIGHT_BOTH)
    *val = chip->als_cur_info.als_ch0;
   else
    *val = chip->als_cur_info.als_ch1;

   ret = IIO_VAL_INT;
  }
  break;
 case 129:
  if (chan->type == IIO_LIGHT) {
   ret = tsl2583_get_lux(indio_dev);
   if (ret < 0)
    goto read_done;

   *val = ret;
   ret = IIO_VAL_INT;
  }
  break;
 case 132:
  if (chan->type == IIO_LIGHT) {
   *val = chip->als_settings.als_gain_trim;
   ret = IIO_VAL_INT;
  }
  break;
 case 131:
  if (chan->type == IIO_LIGHT) {
   *val = gainadj[chip->als_settings.als_gain].mean;
   ret = IIO_VAL_INT;
  }
  break;
 case 130:
  if (chan->type == IIO_LIGHT) {
   *val = 0;
   *val2 = chip->als_settings.als_time;
   ret = IIO_VAL_INT_PLUS_MICRO;
  }
  break;
 default:
  break;
 }

read_done:
 mutex_unlock(&chip->als_mutex);

 if (ret < 0)
  return ret;






 pm_ret = tsl2583_set_pm_runtime_busy(chip, 0);
 if (pm_ret < 0)
  return pm_ret;

 return ret;
}
