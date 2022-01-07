
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int als_contr; int ps_contr; int ps_period; int als_period; int lock_als; int regmap; struct ltr501_chip_info* chip_info; } ;
struct ltr501_chip_info {int als_gain_mask; int als_gain_shift; int ps_gain_tbl_size; int ps_gain; int als_gain_tbl_size; int als_gain; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;





 int LTR501_ALS_CONTR ;
 int LTR501_CONTR_PS_GAIN_MASK ;
 int LTR501_CONTR_PS_GAIN_SHIFT ;
 int LTR501_PS_CONTR ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int ltr501_als_read_samp_freq (struct ltr501_data*,int*,int*) ;
 int ltr501_als_write_samp_freq (struct ltr501_data*,int,int) ;
 int ltr501_get_gain_index (int ,int ,int,int) ;
 int ltr501_ps_read_samp_freq (struct ltr501_data*,int*,int*) ;
 int ltr501_ps_write_samp_freq (struct ltr501_data*,int,int) ;
 int ltr501_set_it_time (struct ltr501_data*,int) ;
 int ltr501_write_intr_prst (struct ltr501_data*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ltr501_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct ltr501_data *data = iio_priv(indio_dev);
 int i, ret, freq_val, freq_val2;
 struct ltr501_chip_info *info = data->chip_info;

 ret = iio_device_claim_direct_mode(indio_dev);
 if (ret)
  return ret;

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 129:
   i = ltr501_get_gain_index(info->als_gain,
        info->als_gain_tbl_size,
        val, val2);
   if (i < 0) {
    ret = -EINVAL;
    break;
   }

   data->als_contr &= ~info->als_gain_mask;
   data->als_contr |= i << info->als_gain_shift;

   ret = regmap_write(data->regmap, LTR501_ALS_CONTR,
        data->als_contr);
   break;
  case 128:
   i = ltr501_get_gain_index(info->ps_gain,
        info->ps_gain_tbl_size,
        val, val2);
   if (i < 0) {
    ret = -EINVAL;
    break;
   }
   data->ps_contr &= ~LTR501_CONTR_PS_GAIN_MASK;
   data->ps_contr |= i << LTR501_CONTR_PS_GAIN_SHIFT;

   ret = regmap_write(data->regmap, LTR501_PS_CONTR,
        data->ps_contr);
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;

 case 132:
  switch (chan->type) {
  case 129:
   if (val != 0) {
    ret = -EINVAL;
    break;
   }
   mutex_lock(&data->lock_als);
   ret = ltr501_set_it_time(data, val2);
   mutex_unlock(&data->lock_als);
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;

 case 131:
  switch (chan->type) {
  case 129:
   ret = ltr501_als_read_samp_freq(data, &freq_val,
       &freq_val2);
   if (ret < 0)
    break;

   ret = ltr501_als_write_samp_freq(data, val, val2);
   if (ret < 0)
    break;


   ret = ltr501_write_intr_prst(data, chan->type,
           0, data->als_period);

   if (ret < 0)
    ret = ltr501_als_write_samp_freq(data, freq_val,
         freq_val2);
   break;
  case 128:
   ret = ltr501_ps_read_samp_freq(data, &freq_val,
             &freq_val2);
   if (ret < 0)
    break;

   ret = ltr501_ps_write_samp_freq(data, val, val2);
   if (ret < 0)
    break;


   ret = ltr501_write_intr_prst(data, chan->type,
           0, data->ps_period);

   if (ret < 0)
    ret = ltr501_ps_write_samp_freq(data, freq_val,
        freq_val2);
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;

 default:
  ret = -EINVAL;
  break;
 }

 iio_device_release_direct_mode(indio_dev);
 return ret;
}
