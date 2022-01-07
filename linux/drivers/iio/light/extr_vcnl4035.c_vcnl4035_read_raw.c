
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4035_data {int als_it_val; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 unsigned int VCNL4035_ALS_DATA ;
 unsigned int VCNL4035_WHITE_DATA ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct vcnl4035_data* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,unsigned int,int*) ;
 int vcnl4035_set_pm_runtime_state (struct vcnl4035_data*,int) ;

__attribute__((used)) static int vcnl4035_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int *val,
       int *val2, long mask)
{
 struct vcnl4035_data *data = iio_priv(indio_dev);
 int ret;
 int raw_data;
 unsigned int reg;

 switch (mask) {
 case 129:
  ret = vcnl4035_set_pm_runtime_state(data, 1);
  if (ret < 0)
   return ret;

  ret = iio_device_claim_direct_mode(indio_dev);
  if (!ret) {
   if (chan->channel)
    reg = VCNL4035_ALS_DATA;
   else
    reg = VCNL4035_WHITE_DATA;
   ret = regmap_read(data->regmap, reg, &raw_data);
   iio_device_release_direct_mode(indio_dev);
   if (!ret) {
    *val = raw_data;
    ret = IIO_VAL_INT;
   }
  }
  vcnl4035_set_pm_runtime_state(data, 0);
  return ret;
 case 130:
  *val = 50;
  if (data->als_it_val)
   *val = data->als_it_val * 100;
  return IIO_VAL_INT;
 case 128:
  *val = 64;
  if (!data->als_it_val)
   *val2 = 1000;
  else
   *val2 = data->als_it_val * 2 * 1000;
  return IIO_VAL_FRACTIONAL;
 default:
  return -EINVAL;
 }
}
