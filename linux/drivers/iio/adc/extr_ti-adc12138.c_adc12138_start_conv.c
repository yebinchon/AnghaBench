
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_chan_spec {int dummy; } ;
struct adc12138 {int dummy; } ;


 int __adc12138_start_conv (struct adc12138*,struct iio_chan_spec const*,int *,int) ;

__attribute__((used)) static int adc12138_start_conv(struct adc12138 *adc,
          struct iio_chan_spec const *channel)
{
 u8 trash;

 return __adc12138_start_conv(adc, channel, &trash, 1);
}
