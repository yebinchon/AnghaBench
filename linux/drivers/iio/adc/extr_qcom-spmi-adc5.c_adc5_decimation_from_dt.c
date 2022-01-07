
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int const u32 ;


 unsigned int ADC5_DECIMATION_SAMPLES_MAX ;
 int EINVAL ;

__attribute__((used)) static int adc5_decimation_from_dt(u32 value,
     const unsigned int *decimation)
{
 unsigned int i;

 for (i = 0; i < ADC5_DECIMATION_SAMPLES_MAX; i++) {
  if (value == decimation[i])
   return i;
 }

 return -EINVAL;
}
