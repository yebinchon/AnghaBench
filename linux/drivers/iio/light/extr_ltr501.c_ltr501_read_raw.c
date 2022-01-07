
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ltr501_data {int als_contr; int ps_contr; TYPE_3__* chip_info; int lock_ps; int lock_als; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;
typedef int __le16 ;
struct TYPE_6__ {int als_gain_mask; int als_gain_shift; TYPE_2__* ps_gain; TYPE_1__* als_gain; } ;
struct TYPE_5__ {int scale; int uscale; } ;
struct TYPE_4__ {int scale; int uscale; } ;


 int EINVAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int LTR501_ALS_DATA1 ;
 int LTR501_CONTR_PS_GAIN_MASK ;
 int LTR501_CONTR_PS_GAIN_SHIFT ;
 int LTR501_PS_DATA_MASK ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int le16_to_cpu (int ) ;
 int ltr501_als_read_samp_freq (struct ltr501_data*,int*,int*) ;
 int ltr501_calculate_lux (int,int) ;
 int ltr501_ps_read_samp_freq (struct ltr501_data*,int*,int*) ;
 int ltr501_read_als (struct ltr501_data*,int *) ;
 int ltr501_read_it_time (struct ltr501_data*,int*,int*) ;
 int ltr501_read_ps (struct ltr501_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ltr501_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct ltr501_data *data = iio_priv(indio_dev);
 __le16 buf[2];
 int ret, i;

 switch (mask) {
 case 134:
  switch (chan->type) {
  case 129:
   ret = iio_device_claim_direct_mode(indio_dev);
   if (ret)
    return ret;

   mutex_lock(&data->lock_als);
   ret = ltr501_read_als(data, buf);
   mutex_unlock(&data->lock_als);
   iio_device_release_direct_mode(indio_dev);
   if (ret < 0)
    return ret;
   *val = ltr501_calculate_lux(le16_to_cpu(buf[1]),
          le16_to_cpu(buf[0]));
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 133:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  switch (chan->type) {
  case 130:
   mutex_lock(&data->lock_als);
   ret = ltr501_read_als(data, buf);
   mutex_unlock(&data->lock_als);
   if (ret < 0)
    break;
   *val = le16_to_cpu(chan->address == LTR501_ALS_DATA1 ?
        buf[0] : buf[1]);
   ret = IIO_VAL_INT;
   break;
  case 128:
   mutex_lock(&data->lock_ps);
   ret = ltr501_read_ps(data);
   mutex_unlock(&data->lock_ps);
   if (ret < 0)
    break;
   *val = ret & LTR501_PS_DATA_MASK;
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
   break;
  }

  iio_device_release_direct_mode(indio_dev);
  return ret;

 case 131:
  switch (chan->type) {
  case 130:
   i = (data->als_contr & data->chip_info->als_gain_mask)
        >> data->chip_info->als_gain_shift;
   *val = data->chip_info->als_gain[i].scale;
   *val2 = data->chip_info->als_gain[i].uscale;
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:
   i = (data->ps_contr & LTR501_CONTR_PS_GAIN_MASK) >>
    LTR501_CONTR_PS_GAIN_SHIFT;
   *val = data->chip_info->ps_gain[i].scale;
   *val2 = data->chip_info->ps_gain[i].uscale;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 135:
  switch (chan->type) {
  case 130:
   return ltr501_read_it_time(data, val, val2);
  default:
   return -EINVAL;
  }
 case 132:
  switch (chan->type) {
  case 130:
   return ltr501_als_read_samp_freq(data, val, val2);
  case 128:
   return ltr501_ps_read_samp_freq(data, val, val2);
  default:
   return -EINVAL;
  }
 }
 return -EINVAL;
}
