
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sample_rate; } ;
struct vf610_adc {int* sample_freq_avail; TYPE_1__ adc_feature; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;

 struct vf610_adc* iio_priv (struct iio_dev*) ;
 int vf610_adc_sample_set (struct vf610_adc*) ;

__attribute__((used)) static int vf610_write_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int val,
   int val2,
   long mask)
{
 struct vf610_adc *info = iio_priv(indio_dev);
 int i;

 switch (mask) {
 case 128:
  for (i = 0;
   i < ARRAY_SIZE(info->sample_freq_avail);
   i++)
   if (val == info->sample_freq_avail[i]) {
    info->adc_feature.sample_rate = i;
    vf610_adc_sample_set(info);
    return 0;
   }
  break;

 default:
  break;
 }

 return -EINVAL;
}
