
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int ctrl_reg1; int data_cfg; int sleep_val; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ scan_index; } ;


 int ARRAY_SIZE (int**) ;
 int EINVAL ;





 int MMA8452_CTRL_DR_MASK ;
 int MMA8452_CTRL_DR_SHIFT ;
 scalar_t__ MMA8452_CTRL_REG1 ;
 scalar_t__ MMA8452_DATA_CFG ;
 int MMA8452_DATA_CFG_FS_MASK ;
 int MMA8452_DATA_CFG_HPF_MASK ;
 scalar_t__ MMA8452_OFF_X ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int mma8452_calculate_sleep (struct mma8452_data*) ;
 int mma8452_change_config (struct mma8452_data*,scalar_t__,int) ;
 int mma8452_get_odr_index (struct mma8452_data*) ;
 int mma8452_get_samp_freq_index (struct mma8452_data*,int,int) ;
 int mma8452_get_scale_index (struct mma8452_data*,int,int) ;
 int** mma8452_os_ratio ;
 int mma8452_set_hp_filter_frequency (struct mma8452_data*,int,int) ;
 int mma8452_set_power_mode (struct mma8452_data*,int) ;

__attribute__((used)) static int mma8452_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct mma8452_data *data = iio_priv(indio_dev);
 int i, ret;

 ret = iio_device_claim_direct_mode(indio_dev);
 if (ret)
  return ret;

 switch (mask) {
 case 129:
  i = mma8452_get_samp_freq_index(data, val, val2);
  if (i < 0) {
   ret = i;
   break;
  }
  data->ctrl_reg1 &= ~MMA8452_CTRL_DR_MASK;
  data->ctrl_reg1 |= i << MMA8452_CTRL_DR_SHIFT;

  data->sleep_val = mma8452_calculate_sleep(data);

  ret = mma8452_change_config(data, MMA8452_CTRL_REG1,
         data->ctrl_reg1);
  break;
 case 128:
  i = mma8452_get_scale_index(data, val, val2);
  if (i < 0) {
   ret = i;
   break;
  }

  data->data_cfg &= ~MMA8452_DATA_CFG_FS_MASK;
  data->data_cfg |= i;

  ret = mma8452_change_config(data, MMA8452_DATA_CFG,
         data->data_cfg);
  break;
 case 132:
  if (val < -128 || val > 127) {
   ret = -EINVAL;
   break;
  }

  ret = mma8452_change_config(data,
         MMA8452_OFF_X + chan->scan_index,
         val);
  break;

 case 131:
  if (val == 0 && val2 == 0) {
   data->data_cfg &= ~MMA8452_DATA_CFG_HPF_MASK;
  } else {
   data->data_cfg |= MMA8452_DATA_CFG_HPF_MASK;
   ret = mma8452_set_hp_filter_frequency(data, val, val2);
   if (ret < 0)
    break;
  }

  ret = mma8452_change_config(data, MMA8452_DATA_CFG,
          data->data_cfg);
  break;

 case 130:
  ret = mma8452_get_odr_index(data);

  for (i = 0; i < ARRAY_SIZE(mma8452_os_ratio); i++) {
   if (mma8452_os_ratio[i][ret] == val) {
    ret = mma8452_set_power_mode(data, i);
    break;
   }
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }

 iio_device_release_direct_mode(indio_dev);
 return ret;
}
