
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int const u32 ;


 int EINVAL ;
 unsigned int VADC_HW_SETTLE_SAMPLES_MAX ;

__attribute__((used)) static int adc5_hw_settle_time_from_dt(u32 value,
     const unsigned int *hw_settle)
{
 unsigned int i;

 for (i = 0; i < VADC_HW_SETTLE_SAMPLES_MAX; i++) {
  if (value == hw_settle[i])
   return i;
 }

 return -EINVAL;
}
