
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int W83627HF_BASE_PWM_FREQ ;

__attribute__((used)) static inline u8 pwm_freq_to_reg_627hf(unsigned long val)
{
 u8 i;




 for (i = 0; i < 4; i++) {
  if (val > (((W83627HF_BASE_PWM_FREQ >> i) +
       (W83627HF_BASE_PWM_FREQ >> (i+1))) / 2))
   break;
 }
 return i;
}
