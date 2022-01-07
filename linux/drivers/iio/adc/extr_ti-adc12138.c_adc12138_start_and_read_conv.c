
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int dummy; } ;
struct adc12138 {int dummy; } ;
typedef int __be16 ;


 int __adc12138_start_conv (struct adc12138*,struct iio_chan_spec const*,int *,int) ;

__attribute__((used)) static int adc12138_start_and_read_conv(struct adc12138 *adc,
     struct iio_chan_spec const *channel,
     __be16 *data)
{
 return __adc12138_start_conv(adc, channel, data, 2);
}
