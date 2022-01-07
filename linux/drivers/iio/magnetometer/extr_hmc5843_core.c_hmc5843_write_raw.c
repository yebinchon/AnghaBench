
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct hmc5843_data {int dummy; } ;


 int EINVAL ;


 int hmc5843_get_samp_freq_index (struct hmc5843_data*,int,int) ;
 int hmc5843_get_scale_index (struct hmc5843_data*,int,int) ;
 int hmc5843_set_range_gain (struct hmc5843_data*,int) ;
 int hmc5843_set_samp_freq (struct hmc5843_data*,int) ;
 struct hmc5843_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int hmc5843_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct hmc5843_data *data = iio_priv(indio_dev);
 int rate, range;

 switch (mask) {
 case 129:
  rate = hmc5843_get_samp_freq_index(data, val, val2);
  if (rate < 0)
   return -EINVAL;

  return hmc5843_set_samp_freq(data, rate);
 case 128:
  range = hmc5843_get_scale_index(data, val, val2);
  if (range < 0)
   return -EINVAL;

  return hmc5843_set_range_gain(data, range);
 default:
  return -EINVAL;
 }
}
