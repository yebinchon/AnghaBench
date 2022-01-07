
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_tp_dev {int res_index; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;

 struct ms_tp_dev* iio_priv (struct iio_dev*) ;
 int* ms5637_samp_freq ;

__attribute__((used)) static int ms5637_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct ms_tp_dev *dev_data = iio_priv(indio_dev);
 int i;

 switch (mask) {
 case 128:
  i = ARRAY_SIZE(ms5637_samp_freq);
  while (i-- > 0)
   if (val == ms5637_samp_freq[i])
    break;
  if (i < 0)
   return -EINVAL;
  dev_data->res_index = i;

  return 0;
 default:
  return -EINVAL;
 }
}
