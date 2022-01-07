
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int dummy; } ;
struct adc12138 {int complete; } ;
typedef int __be16 ;


 int adc12138_read_conv_data (struct adc12138*,int *) ;
 int adc12138_start_conv (struct adc12138*,struct iio_chan_spec const*) ;
 int adc12138_wait_eoc (struct adc12138*,int ) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int adc12138_adc_conversion(struct adc12138 *adc,
       struct iio_chan_spec const *channel,
       __be16 *value)
{
 int ret;

 reinit_completion(&adc->complete);

 ret = adc12138_start_conv(adc, channel);
 if (ret)
  return ret;

 ret = adc12138_wait_eoc(adc, msecs_to_jiffies(100));
 if (ret)
  return ret;

 return adc12138_read_conv_data(adc, value);
}
