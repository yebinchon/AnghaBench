
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adc12138 {int dummy; } ;
typedef int __be16 ;


 int ADC12138_MODE_READ_STATUS ;
 int adc12138_mode_programming (struct adc12138*,int ,int *,int) ;

__attribute__((used)) static int adc12138_read_conv_data(struct adc12138 *adc, __be16 *value)
{

 return adc12138_mode_programming(adc, ADC12138_MODE_READ_STATUS,
      value, sizeof(*value));
}
